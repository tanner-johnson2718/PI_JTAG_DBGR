if [ $# != 2 ]; then
    echo "error usage ./esp32_connect.sh <rate (khz)> <IP>"
    exit
fi

cd ~/openocd
openocd -f tcl/interface/raspberrypi-native.cfg -f tcl/target/esp32.cfg -c "adapter speed ${1}" -c "bindto ${2}"
