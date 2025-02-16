Grainflow is a powerful granulation tool build for Max designed to be as flexible as possible to allow for rapid experimentation with granulation. Grainflow is a synchronous and sample accurate granulator that is scheduled entirely on Max's audio thread while offering a toolkit of vast customization. 


## Key Features
- Multichannel soundfile and live granulation
- Control of grains using mc signals
- Use custom envelopes including 2D buffers
- Per grain spatialization in both circular and 3D panning 
- Graphical tools to help visualize grains on a waveform and in 3D spatialization 
- A suite of prebuilt granular effects that can be dropped in to patches or used as a reference
- Per grain attribute control that acts similar to the MC system  


## Installation via Precompiled Package
*Major releases will always be avalible through the Max Package Manager, but if you like living on the edge, you can download prereleases and ci builds or build from source.* 
1. Download the latest signed [release](https://github.com/composingcap/grainflow/releases) or **unsigned** [ci-build](https://nightly.link/composingcap/grainflow/workflows/cmake-multi-platform/master/GrainflowPackage.zip)
2. Unzip the package and drag **grainflow.maxpack** into any Max window or open it with Max 

## Advanced Features 
- Set delay, window placement, and pitch as banks using buffers
- Support for grouping grains into streams
- Set grain level loop points 
- Set glisson curves using Max buffers 
- Provides detailed grain information 

## How to contribute
Grainflow is open to contributions both in terms of Max examples, abstractions, and help file improvements as well as help with the C++ codebase in `./source` and the [GrainflowLib](https://github.com/composingcap/GrainflowLib) repository. \
Additionally, please post any feature requests to [Issues](https://github.com/composingcap/grainflow/issues) or the Grainflow Discord. \
We are also happy to assist in implementation of GrainflowLib outside of Max and am planning to target other platforms as I have time. 
## Building from source
Building from source is the best way to ensure you get the most up-to-date changes

Currently grainflow has only ben tested on Windows 11 and Mac OS 14
You must have [cmake](https://cmake.org/) and Visual Studio (Windows) or Xcode (Mac) 
### Downloading the repo
Open a terminal window in the directory you would like to place grainflow.
If you would like to place grainflow in you Max Packages directory, make sure to remove any other grainflow folder.
```
git clone https://github.com/composingcap/grainflow.git --recursive
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
cmake --build 
```

### With python:
This build script should work on most platforms. You may also sign externals with an apple developer ID and create a MaxPack. 
#### build
```
python3 ./create_release.py build
```
#### code sign and notarize  
*this requires an apple developer ID*
1. create a json keystore `./.secrets/keystore.json`
2. add your developer key as `developer_team_code`
3. run:
```
python3 ./create_release.py sign
```
4. copy the submission ID when prompted 

#### pack
```
python3 ./create_release.py pack
```

