# Grainflow 2 
Grainflow 2.0 improves on the original grainflow by implementing grainflow code into a much more efficient Max external created using the Min API.

The external is single threaded (rather than multithreaded in a poly~) which means grainflow instances can be placed in a poly for multithreaded management. This also means grainflow is now suitable for using in Max for Live.

This update also has externals for grainflow.waveform~ and grainflow.spatview~ with much more performant external version replacing the previous jsui versions.

## Installation 
1. Download this repo or the latest preview release
2. (Optional) If you are using the repo rather an a release, you should build the externals for your platform
3. Unzip it and place it in your Max/Packages folder


## Features
✔️ Soundfile granulation\
✔️ Live granulation\
✔️ Control of grains using mc signals\
✔️ Get information about ech grain using via lists and multichannel signals\
✔️ Set delay, window placement, and pitch using buffers\
✔️ Support for ganulating different buffer channels per grain\
✔️ Support  for granulating different buffers with each grain\
✔️ Support for grouping grains into streams\
✔️ 2D envelope buffers \
✔️ Replace Grainflow.Spatview~ with and external \
✔️ Replace Grainflow.Waveform~ with and external \
✔️ The ability to set loop points per grain 

### Removed features
✖️ The ability to manually trigger grains (alternate solution available) \
✖️ The ability to store configurations in dictionaries

### Planned Features
- External of grainflow.live~. This will allow for 0 latency between input and granulation. Currently a signal vector of delay is needed. 
- External version of grainflow.moddial 

## Migrating old code
For the most part, grainflow code *should* be more or less the same in this new version. There are a few names that have been changed and some that have been removed.
The documentation has not yet been updated to reflect these changes.
- Delay should be used instead of trav. 
- Trav global has been removed (use delay)
- Env2D has been folded into the general envelope reading. You should now specify the "env" message with a number of envelope. 
- Env2DPosition is now EnvPosition
- Windows are now places with  the window message (windowOffset,  windowOffsetRandom)


## Buidling from source
Building from source is the best way to ensure you get the most up-to-date changes

Currently grainflow has only ben tested on Windows 11  and Mac OS 14
You must have [cmake](https://cmake.org/) and Visual Studio (Windows) or Xcode (Mac)  
### Downloading the repo
Open a terminal window in the  directory you would like to place grainflow.
If you would like to place grainflow in you Max Packages directory, make sure to remove any other grainflow folder.
```
git clone https://github.com/composingcap/grainflow.git -b f/external --recursive
```
### Building grainflow externals 
#### Windows:
*Windows builds should use the MSVC compiler*
```
cd ./grainflow
mkdir ./build
cd build
cmake ../
cmake --build . --config Release
```
#### Mac:
*Mac builds should use the Xcode compiler (not clang)*
```
cd ./grainflow
mkdir ./build
cd build
cmake ../ -G Xcode
cmake --build . --config Release
```
