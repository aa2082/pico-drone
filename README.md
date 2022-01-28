# pico-drone

C++ code:

The code is in the pico-examples/pico-drone

To compile and flash using Ubuntu 20.04:

1.	Install required drivers by following instructions on 'Chapter 1. Quick Pico Setup' from: https://datasheets.raspberrypi.com/pico/getting-started-with-pico.pdf
2.	Press “bootsel” when plugging in board. RP2040 will appear as a hard-disk to computer
3.  from the main pico-drone folder, run the compile shell script: 
```
chmod +x compile.sh
./compile.sh
```
4.  Monitor output using picocom:

to install picocom
```
sudo apt-get update
sudo apt-gete install picocom
```
to access the serial output of the RP2040, setup to display gyo outputs (X,Y,Z):
```
sudo minicom -b 115200 -D /dev/ttyACM0
```

refer to appendix A for connections
