if [ $# != 2 ]; then
    echo "error usage ./esp32_connect.sh <rate (khz)> <IP>"
    exit
fi

openocd -f ./openocd_config/rp4_interface.cfg -f ./openocd_config/esp32_target.cfg -c "adapter speed ${1}" -c "bindto ${2}"