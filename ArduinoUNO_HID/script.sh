echo "Plug ARDUINO UNO into your PC with the two pins connected."
read
echo "Remove the jumper that connect pins."
read
echo "Reseting ARDUINO to default firmware..."
dfu-programmer atmega16u2 erase
dfu-programmer atmega16u2 flash --suppress-bootloader-mem Arduino-COMBINED-dfu-usbserial-atmega16u2-Uno-Rev3.hex
dfu-programmer atmega16u2 reset
echo "Unplug ARDUINO from pc and plug it again."
read
echo "Upload the code into ARDUINO"
read
echo "Connect two pins to reset ARDUINO"
read
echo "Remove the jumper that connect two pins"
read
echo "Writing Keyboard Firmware"
dfu-programmer atmega16u2 erase
dfu-programmer atmega16u2 flash Arduino-keyboard-0.3.hex
dfu-programmer atmega16u2 reset
echo "Done!"

