# Bluetooth Toggle
# ----------------
# Toggle connection state of a Bluetooth device.
# This function is useful when you have to handle several headsets,
# headphones, and speakers. You can run the 'bluetoothctl' command and inside
# the prompt, enter 'devices' to list all paired devices. Make a note of the MAC
# address. Then, you can use this function to connect or disconnect a device
# using its MAC address and name.
#
# Usage: bt_toggle <device_mac> <device_name>
#
# Arguments:
# <device_mac> : The MAC address of the Bluetooth device.
# <device_name> : The name of the Bluetooth device.
#
# Example:
# You can write a function in .private.zsh as e.g for my JBL headphones
# where xx:xx... is to replaced with the MAC address:
# 
# function jbl() {
#   bt_toggle "xx:xx:xx:xx:xx:xx" "JBL CLUB950NC"
# }
#
function bt_toggle() {
	DEVICE_MAC=$1
	DEVICE_NAME=$2

	if [ -n "$(bluetoothctl info $DEVICE_MAC | grep "Connected: yes")" ]; 
	then
		echo "Disconnecting from $DEVICE_NAME"
		bluetoothctl disconnect $DEVICE_MAC
	elif [ -n "$(bluetoothctl info $DEVICE_MAC | grep "Connected: no")" ]; 
	then
		echo "Connecting to $DEVICE_NAME"
		bluetoothctl connect $DEVICE_MAC
	else
		echo "$DEVICE_NAME not found"
	fi
}
