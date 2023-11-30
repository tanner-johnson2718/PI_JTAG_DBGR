# PI JTAG Debugger

# HW Requirements

* RPI 4 model B (x2)
* ESP32-WROOM-32
* Linux Laptop
* USB to serial TTL cable
* Female to Female Dupont Connectors

# Init PI OS Set up

* RPI 4 model B
* Download Raspian OS at [link](https://www.raspberrypi.com/software/operating-systems/)
    * SHA256 Hash - `722305ccd11fad2e7d49f29db551b0a5d4ac10e267f33c05a620b74eea5165db`
* Flass using `dd`
* Use mouse, keyboard, and monitor for init setup
* Install openocd:

```
sudo apt-get update
sudo apt-get install -y git make pkg-config autoconf libtool libusb-1.0-0 libusb-1.0-0-dev
git clone https://github.com/openocd-org/openocd.git

git clone https://github.com/openocd-org/openocd.git
cd openocd
./bootstrap
./configure --enable-sysfsgpio --enable-bcm2835gpio
make
```

* cat the rpi host config file `cat tcl/interface/raspberrypi-gpio-connector.cfg` and verify it matches the table below

| PI Header PIN | BCM GPIO # | JTAG Func |
| --- | --- | --- |
| 23 |  11 | TCK |
| 23 |   8 | TMS |
| 19 |  10 | TDI |
| 21 |   9 | TDO |
| 20 | GND | GND |

# Datasheets and Refs

* [BCM2711](./Docs/bcm2711-peripherals.pdf)
* [RPI Schema](./Docs/raspberry-pi-4-reduced-schematics.pdf)
* [ESP32](./Docs/esp32-wroom-32_datasheet_en.pdf)
* [RPI OpenOCD Host Blog](https://blog.wokwi.com/gdb-debugging-esp32-using-raspberry-pi/)
* [Set up RPI as JTAG Target](https://sysprogs.com/VisualKernel/tutorials/raspberry/jtagsetup/)