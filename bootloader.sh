#!/bin/bash
PORT="usb"

PART="atmega32u4"

BAUD="57600"

PROG="usbasp"

avrdude -c$PROG -P$PORT -p$PART -b$BAUD -U lfuse:w:0xd2:m -U hfuse:w:0x99:m -U efuse:w:0xf3:m -U lock:w:0x3F:m -U flash:w:proger-usbdfu/Proger-usbdfu.hex:i -U lock:w:0x0F:m