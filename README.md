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
✔️ Support for grouping grains into streams
### In Progress
🔲 The abilty to store configurations in dictionaries\
🔲 2D envelope buffers
###  Planned
🔲 Replace JSUI gui elements with external versions
### Removed features
✖️ The abiltiy to manually trigger grains

## Buidling
Currently grainiflow has only ben tested on Windows 11.  
You must have [cmake](https://cmake.org/) and Visual Studio (Windows) or Xcode (Mac)  
### Downloading the repo
Open a terminal window in the  directory you would like to place grainflow.
If you would like to place grainflow in you Max Packages directory, make sure to remove any other grainflow folder.
```
git clone https://github.com/composingcap/grainflow.git -b f/external --recursive
```
### Building grainflow.voice~
```
cd ./grainflow
mkdir ./build
cd build
cmake ../
cmake --build . --target ALL_BUILD --config Release
```
