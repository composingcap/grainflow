{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 10,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 86.0, 91.0, 1019.0, 352.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Futura Medium",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "Minimal",
		"subpatcher_template" : "minimal",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-4",
					"lastchannelcount" : 2,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 21.0, 183.0, 136.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "mc.live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "mc.live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "mc.live.gain~"
				}

			}
, 			{
				"box" : 				{
					"elementcolor" : [ 0.694117647058824, 0.694117647058824, 0.694117647058824, 1.0 ],
					"id" : "obj-3",
					"local" : 1,
					"maxclass" : "mc.ezdac~",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 247.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "grainflow.readymade.scrubber~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 26.0, 8.0, 990.0, 173.0 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1::obj-10" : [ "state", "state", 0 ],
			"obj-1::obj-15" : [ "grainSize", "grainSize", 0 ],
			"obj-1::obj-20" : [ "samplePosition", "samplePosition", 0 ],
			"obj-1::obj-22" : [ "grainAmplitude", "grainAmplitude", 0 ],
			"obj-1::obj-4" : [ "soundfile", "live.drop", 0 ],
			"obj-1::obj-45" : [ "transposition", "transposition", 0 ],
			"obj-1::obj-56" : [ "transpositionRandom", "transpositionRandom", 0 ],
			"obj-1::obj-57" : [ "samplePositionRandom", "samplePositionRandom", 0 ],
			"obj-1::obj-65" : [ "grainAmplitudeRandom", "grainAmplitudeRandom", 0 ],
			"obj-1::obj-68" : [ "grainSizeRandom", "grainSizeRandom", 0 ],
			"obj-1::obj-77" : [ "grainSizeRandom[1]", "grainSizeRandom", 0 ],
			"obj-1::obj-8" : [ "grainRate", "grainRate", 0 ],
			"obj-4" : [ "mc.live.gain~", "mc.live.gain~", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-1::obj-22" : 				{
					"parameter_longname" : "grainAmplitude",
					"parameter_shortname" : "grainAmplitude"
				}
,
				"obj-1::obj-45" : 				{
					"parameter_initial" : 0,
					"parameter_longname" : "transposition",
					"parameter_range" : [ -24.0, 24.0 ],
					"parameter_shortname" : "transposition",
					"parameter_unitstyle" : 7
				}
,
				"obj-1::obj-56" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "transpositionRandom",
					"parameter_range" : [ 0.0, 24.0 ],
					"parameter_shortname" : "transpositionRandom"
				}
,
				"obj-1::obj-57" : 				{
					"parameter_invisible" : 0,
					"parameter_linknames" : 1,
					"parameter_longname" : "samplePositionRandom",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0.0, 500.0 ],
					"parameter_shortname" : "samplePositionRandom",
					"parameter_type" : 0,
					"parameter_unitstyle" : 2
				}
,
				"obj-1::obj-65" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "grainAmplitudeRandom",
					"parameter_shortname" : "grainAmplitudeRandom"
				}
,
				"obj-1::obj-68" : 				{
					"parameter_initial" : 0,
					"parameter_longname" : "grainSizeRandom",
					"parameter_range" : [ 0.0, 100.0 ],
					"parameter_shortname" : "grainSizeRandom",
					"parameter_unitstyle" : 5
				}
,
				"obj-1::obj-77" : 				{
					"parameter_longname" : "grainSizeRandom[1]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "grainflow.readymade.scrubber~.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/Grainflow/patchers/readymades",
				"patcherrelativepath" : "../../../patchers/readymades",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "grainFlow.waveform~.js",
				"bootpath" : "D:/Documents/Max 8/Packages/Grainflow/jsui",
				"patcherrelativepath" : "../../../jsui",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "grainflow~.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/Grainflow/patchers",
				"patcherrelativepath" : "../../../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "_grainflow.poly.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/Grainflow/patchers",
				"patcherrelativepath" : "../../../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "grainflow.voice.gendsp",
				"bootpath" : "D:/Documents/Max 8/Packages/Grainflow/code",
				"patcherrelativepath" : "../../../code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "grainflow.util.rateSizePhasor~.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/Grainflow/patchers/util",
				"patcherrelativepath" : "../../../patchers/util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "grainflow.util.stereoPan~.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/Grainflow/patchers",
				"patcherrelativepath" : "../../../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "Minimal",
				"default" : 				{
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.999999, 0.999974, 0.999991, 1.0 ],
					"fontname" : [ "Futura Medium" ],
					"elementcolor" : [ 0.999999, 0.999974, 0.999991, 1.0 ],
					"fontface" : [ 0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color1" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0.0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ],
		"editing_bgcolor" : [ 0.956862745098039, 0.956862745098039, 0.956862745098039, 1.0 ]
	}

}
