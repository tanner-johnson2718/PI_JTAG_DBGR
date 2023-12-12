# Reverse Engineer Example

In this write up we will use our rpi4 jtag debugger to reverse engineer an image on an esp 32. Set up the pi and the esp32 as shown [here](./Init_PI_JTAG_Test.md). Now the rules of the game allow the following:

* We know the stage 1 boot loader boots the second stage boot loader at phy addr 0x1000
* We cannot use the source code debugger but we can use an assembly level debugger
* Goal is to extract the full binary image that is used and determine the segments loaded to memory
* Assume we have access to the [TRM](../Docs/esp32_technical_reference_manual_en.pdf)

# Step 1
