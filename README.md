# PI JTAG Debugger

This project started off as turning a RPI into a JTAG debuger / Flasher. However as the project progressed we decided to intergate this as the center piece of an electronics work bench. The pi will provide the user interface via a desktop environment and the workbench will feature the following:

* Soldier Station
* Bench Power Supply
* RPI w/ mouse, keyboard and monitor interface
    * USB Osc scope
    * JTAG interface
    * UART interface
    * SPI interface

# JTAG

| PI Header PIN | BCM GPIO # | JTAG Func | COLOR |
| --- | --- | --- | --- |
| 23 |  11 |  TCK | ORNG |
| 24 |   8 |  TMS | BRWN |
| 19 |  10 |  TDI | YLLW |
| 21 |   9 |  TDO | GREN |
| 26 |   7 | TRST | WHTE |
| 18 |  26 | SRST | BLUE |
| 20 | GND |  GND | BLCK |

* [Init Set up of PI JTAG Debugger](./Init_PI_JTAG_Test.md)
* [Targeting and Setting up an ESP32 Dev Env](./Init_PI_JTAG_Test.md#esp-32-set-up)
* [Targeting an RPI 4](./RPI4_JTAG_Target.md)

## UART

| PI Header PIN | BCM GPIO # | UART Func | COLOR |
| --- | --- | --- | --- |
|  6 |     GND | GND | BLCK |
|  8 | GPIO 14 |  TX | WHTE |
| 10 | GPIO 15 |  RX | GRAY |

# Osc Scope

* [Setting up the Osc Scope SW](./install_osc_scope.md)


# Datasheets and Refs

* [BCM2711](./Docs/bcm2711-peripherals.pdf)
* [RPI Schematics](./Docs/raspberry-pi-4-reduced-schematics.pdf)
* [ESP32 Wroom 32 Data Sheet](./Docs/esp32-wroom-32_datasheet_en.pdf)
* [RPI OpenOCD Host Blog](https://blog.wokwi.com/gdb-debugging-esp32-using-raspberry-pi/)
* [Set up RPI as JTAG Target](https://sysprogs.com/VisualKernel/tutorials/raspberry/jtagsetup/)
* [Set up RPI as JTAG Target 2](https://www.vinnie.work/blog/2020-11-06-baremetal-rpi4-setup)
* [OpenOCD Official Doc](./Docs/openocd.pdf)
* [Arm A72 TRM](./Docs/cortex_a72_mpcore_trm_100095_0001_02_en.pdf)
* [ESP 32 Programming Model](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/index.html)
* [ESP 32 TRM](./Docs/esp32_technical_reference_manual_en.pdf)