# Using a PI to Target a PI

Use the host or interface as set up [here](./Init_PI_JTAG_Test.md). Using the table below attach the following leads from the interface as described previously to the target pi as described below.

| Target PI Header PIN | BCM2835 GPIO # | JTAG Func | Color |
| --- | --- | --- | --- |
| 22 | GPIO 25 |  TCK | ORNG |
| 13 | GPIO 27 |  TMS | BRWN |
| 37 | GPIO 26 |  TDI | YLLW |
| 18 | GPIO 24 |  TDO | GREN |
| 20 |   GND   |  GND | BLCK |
| 15 | GPIO 22 | TRST | WHTE |

```
# In config.txt in boot parition on target pi enter:
gpio=22-27=np
enable_jtag_gpio=1
```

* [SMP in openocd](https://openocd.org/doc/html/GDB-and-OpenOCD.html#usingopenocdsmpwithgdb)
* [6.3.4 more about SMP in openOCD](https://openocd.org/doc/html/Config-File-Guidelines.html)
* On pi to launch a session: `openocd -f tcl/interface/raspberrypi-native.cfg -c "set USE_SMP 1" -f tcl/target/bcm2711.cfg -c "bindto 10.0.0.185"`
    * Note that we are setting use SMP cause our linux kernel is SMP and we must have that `-c` command before we load the `bcm2711.cfg` config
* [GDB openocd set up doc](https://openocd.org/doc/html/Server-Configuration.html)
* Just made our own config: [bcm2711_target.cfg](./openocd_config/bcm2711_target.cfg).
* Consolodated all the rpi4 interface into one [file](./openocd_config/rpi4_interface.cfg)
* Need to run `$_TARGETNAME configure -rtos hwthread` for every target i.e. CPU.
* Also need to add `-coreid $_core` to thread creation.
* All of this is reflected in the bcm2711 config target file and creates a gdb target that behaves as expected.