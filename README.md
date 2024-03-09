## downloading the repo
Open a terminal window in the  directory you would like to place grainflow.
If you would like to place grainflow in you Max Packages directory, make sure to remove any other grainflow folder.
```
git clone https://github.com/composingcap/grainflow.git -b f/external --recursive
```
## Building grainflow.voice~
```
cd ./grainflow
mkdir ./build
cd build
cmake ../
cmake --build .
```
