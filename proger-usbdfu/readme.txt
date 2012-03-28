To setup the project and program an ATMEG32U2 with the Proger USB DFU bootloader:
1. unpack the source into LUFA's Bootloader directory
2. set PPROGER_MODEL_PID in the makefile as appropriate 
3. do "make clean; make; make program"

Check that the board enumerates as "Proger DFU".  Test by uploading the Proger-usbserial application firmware (see instructions in Proger-usbserial directory)

