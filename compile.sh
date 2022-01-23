cd pico/pico-examples
rm -rf build
mkdir build
cd build
export PICO_SDK_PATH=../../pico-sdk
cmake ..
cd pico-drone
make

echo compiled!

cd pico-drone
cp pico-drone.uf2 /media/$USER/RPI-RP2/

echo uploaded!
