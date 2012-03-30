# Proger firmware and bootloader

This is the firmware for the Bazingalabs Proger if you want to reprogram the Proger follow the steps below
Also this code is copied from the Arduino project so all kudo's to them.

## Prerequisits

In onrder to program the Proger you'll need some devise to program an Amega328 using ICSP like
the AVR ISP mkII or a clone of some kind.


# Programming the bootloader

* First clone this repository
* Make sure you have avr-gcc installed and make
* Go to the dirctory proger-usbdfu
* Connect the proger to the programming device
* Type make program
* And you should be set
* Check if the device enumerates as a Proger DFU device


# Programming the firmware

If you have cloned the repository as described in the step above and you also have avr-gcc and make installed then the steps are as follows

* Go to the directory proger-usbserial
* Connect the Proger to your pc using a usb cable
* Search on the backside of the Proger for a solder jumber (near the bottom right)
* Hold something with iron to the jumper so the two sides connect
* Now reset the Proger by shorting pin 1 and 2 on the ICSP connector
* The Proger should now pop up as a Proger DFU device
* Now type make dfu
* And your done
