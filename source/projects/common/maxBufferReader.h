#pragma once
#include <algorithm>
#include <c74_min.h>
#include "gfGrain.h"
#include "gfIBufferReader.h"
#include "gfEnvelopes.h"

///Provides an interface to grainflow using Max Min API

namespace Grainflow
{
	using namespace c74::min;

	class max_buffer_reader
	{
	public:
		static bool update_buffer_info(buffer_reference* buffer, const gf_io_config<>& io_config,
		                               gf_buffer_info* buffer_info)
		{
			if (buffer == nullptr) return false;
			buffer_lock<> sample_lock(*buffer);
			if (!sample_lock.valid()) return false;
			if (buffer_info == nullptr) return true;
			buffer_info->buffer_frames = static_cast<int>(sample_lock.frame_count());
			buffer_info->one_over_buffer_frames = 1.0f / static_cast<float>(buffer_info->buffer_frames);
			buffer_info->one_over_samplerate = 1 / sample_lock.samplerate();

			buffer_info->samplerate = static_cast<int>(sample_lock.samplerate());
			buffer_info->sample_rate_adjustment = !io_config.livemode
				                                      ? static_cast<float>(sample_lock.samplerate() * buffer_info->
					                                      one_over_samplerate)
				                                      : 1;
			buffer_info->n_channels = static_cast<int>(sample_lock.channel_count());
			return true;
		}

		static bool sample_param_buffer(buffer_reference* buffer, gf_param* param, const int grain_id)
		{
			std::random_device rd;
			if (param->mode == gf_buffer_mode::normal || buffer == nullptr)
			{
				return false;
			}
			buffer_lock<> param_buf(*buffer);
			if (!param_buf.valid())
				return false;
			size_t frame = 0;
			size_t frames = param_buf.frame_count();
			if (frames <= 0) return false;
			if (param->mode == gf_buffer_mode::buffer_sequence)
			{
				frame = grain_id % frames;
			}
			else if (param->mode == gf_buffer_mode::buffer_random)
			{
				frame = (rd() % frames);
			}
			param->value = param_buf.lookup(frame, 0) + param->random * (rd() % 10000) * 0.0001 + param->offset *
				grain_id;
			return true;
		}

		static void sample_buffer(buffer_reference* buffer, const int channel, double* __restrict samples,
		                          const double* positions, 
		                          const int size, const float lower_bound, const float upper_bound)
		{
			if (buffer == nullptr) return;
			buffer_lock<> sample_lock(*buffer);
			if (!sample_lock.valid()) return;
			if (positions[0] != positions[0]) return;
			const int max_frame = static_cast<int>(sample_lock.frame_count())-1;
			const int lower_frame = max_frame * lower_bound;
			const int upper_frame = max_frame * upper_bound;
			if (upper_frame == lower_frame) return;
			int channels = static_cast<int>(sample_lock.channel_count());
			channels = std::max(channels, 1);
			const auto chan = channel % channels;
			for (int i = 0; i < size; i++)
			{
				const auto position = positions[i];
				const auto first_frame = static_cast<int>(position);
				const auto tween = position - first_frame;
				const bool frame_overflow = first_frame >= upper_frame;
				const int second_frame = (first_frame + 1) * !frame_overflow + lower_frame * frame_overflow;
				samples[i] = sample_lock[first_frame * channels + chan] * (1 - tween) + sample_lock[second_frame * channels + chan] * tween;
			}
		};

		static void read_buffer(buffer_reference* buffer, int channel, double* __restrict samples, int start_sample,
			const int size)
		{
			if (buffer == nullptr) return;
			buffer_lock<> sample_lock(*buffer);
			if (!sample_lock.valid()) return;

			const int frames = static_cast<int>(sample_lock.frame_count());
			int channels = static_cast<int>(sample_lock.channel_count());
			if (channels <= 0) return;
			auto write_channel = channel % channels;
			auto is_segmented = (start_sample + size) >= frames;

			if (!is_segmented)
			{
				for (int i = 0; i < size; i++)
				{
					samples[i] = sample_lock[(start_sample + i) * channels + channel];
				}
			}
			else
			{
				for (int i = 0; i < size; i++)
				{
					samples[i] = sample_lock[(((start_sample + i) % frames) * channels + channel)];
				}
			}
		}

		static void write_buffer(buffer_reference* buffer, const int channel, const double* samples,
			const int start_position, const int size)
		{
			if (buffer == nullptr) return;
			buffer_lock<> sample_lock(*buffer);
			if (!sample_lock.valid()) return;
			sample_lock.dirty();
			const int frames = static_cast<int>(sample_lock.frame_count());
			int channels = static_cast<int>(sample_lock.channel_count());
			if (channels <= 0) return;
			auto write_channel = channel % channels;
			auto is_segmented = (start_position + size) >= frames;

			if (!is_segmented)
			{
				for (int i = 0; i < size; i++)
				{
					sample_lock[(start_position + i) * channels + channel] = samples[i];
				}
				return;
			}
			auto first_chunk = (start_position + size) - frames;
			for (int i = 0; i < size; i++)
			{
				sample_lock[(((start_position + i) % frames) * channels + channel)] = samples[i];
			}
		};


		static void sample_envelope(buffer_reference* buffer, const bool use_default, const int n_envelopes,
		                            const float env2d_pos, double* __restrict samples,
		                            const double* __restrict grain_clock, const int size)
		{
			if (use_default)
			{
				for (int i = 0; i < size; i++)
				{
					const auto frame = static_cast<int>(
						std::fmax(((std::fmin((grain_clock[i] * 1024.0), 1023.0))), 0.0));
					samples[i] = Grainflow::gf_envelopes::hanning_envelope[frame];
				}
				return;
			}

			if (buffer == nullptr)return;
			buffer_lock<> envelope_lock(*buffer);
			if (!envelope_lock.valid()) return;
			const auto frames = static_cast<int>(envelope_lock.frame_count());

			if (n_envelopes <= 1)
			{
				for (int i = 0; i < size; i++)
				{
					if (!envelope_lock.valid()) return;
					const auto frame = static_cast<int>(grain_clock[i] * frames);
					samples[i] = envelope_lock[frame];
				}
				return;
			}
			for (int i = 0; i < size; i++)
			{
				if (!envelope_lock.valid()) return;
				const int size_per_envelope = frames / n_envelopes;
				const int env1 = static_cast<int>(env2d_pos * static_cast<float>(n_envelopes));
				const int env2 = env1 + 1;
				const float fade = env2d_pos * static_cast<float>(n_envelopes) - static_cast<float>(env1);
				const auto frame = static_cast<int>((grain_clock[i] * size_per_envelope));
				samples[i] = envelope_lock[(env1 * size_per_envelope + frame) % frames] * (1 - fade) + envelope_lock[(
					env2 *
					size_per_envelope + frame) % frames] * fade;
			}

		};

		static void clear_buffer(buffer_reference* buffer){
			buffer_lock<> samples(*buffer);
			if (!samples.valid()){
				return;
			}
			int size = samples.frame_count() * samples.channel_count();
			for (int i = 0; i <  size / 16; ++i){
				int base = i*16;
				for (int j = 0; j < 16; ++j){
					samples[base+j] = 0.0;
				}
			}
			int truncated = (size/16)*16;
			int remain = size - truncated;
			for (int i = 0; i < remain; ++i){
				samples[truncated+i] = 0;
			}
		}

		static gf_i_buffer_reader<buffer_reference> get_max_buffer_reader()
		{
			gf_i_buffer_reader<buffer_reference> _bufferReader;
			_bufferReader.sample_buffer = max_buffer_reader::sample_buffer;
			_bufferReader.sample_envelope = max_buffer_reader::sample_envelope;
			_bufferReader.update_buffer_info = max_buffer_reader::update_buffer_info;
			_bufferReader.sample_param_buffer = max_buffer_reader::sample_param_buffer;
			_bufferReader.write_buffer = max_buffer_reader::write_buffer;
			_bufferReader.read_buffer = max_buffer_reader::read_buffer;
			_bufferReader.clear_buffer = max_buffer_reader::clear_buffer;
			return _bufferReader;
		}
	};
}
