This branch is used for developing the grainflow~ external 

## Features
*If there is a feature not on this list that you use or would like, please open an issue* \
✔️ Soundfile granulation\
✔️ Live granulation\
✔️ Control of grains using mc signals\
✔️ Get information about ech grain using via lists and multichannel signals\
✔️ Set delay, window placement, and pitch using buffers\
✔️ Support for ganulating different buffer channels per grain\
✔️ Support  for granulating different buffers with each grain\
✔️ Support for grouping grains into streams\
✔️ 2D envelope buffers
✔️ Replace Grainflow.Spatview~ with and external \
✔️ Replace Grainflow.Waveform~ with and external \
✔️ The ability to set loop points per grain \

### Removed features
✖️ The abiltiy to manually trigger grains
✖️ The abilty to store configurations in dictionaries


## Migrating old code
For the most part, grainflow code *should* be more or less the same in this new version. There are a few names that have been changed and some that have been removed.
The documentation has not yet been updated to reflect these changes.
- Delay should be used instead of trav. 
- Trav global has been removed (use delay)
- Env2D has been folded into the general envelope reading. You should now specify the "env" message with a number of envelope. 
- Env2DPosition is now EnvPosition
- Windows are now places with  the window message (windowOffset,  windowOffsetRandom)


## Buidling
Currently grainiflow has only ben tested on Windows 11  and Mac OS 14
You must have [cmake](https://cmake.org/) and Visual Studio (Windows) or Xcode (Mac)  
### Downloading the repo
Open a terminal window in the  directory you would like to place grainflow.
If you would like to place grainflow in you Max Packages directory, make sure to remove any other grainflow folder.
```
git clone https://github.com/composingcap/grainflow.git -b f/external --recursive
```
### Building grainflow.voice~
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
*Mac builds should use the Xcode compiler (not Apple clang)*
```
cd ./grainflow
mkdir ./build
cd build
cmake ../ -G Xcode
cmake --build . --config Release
```
