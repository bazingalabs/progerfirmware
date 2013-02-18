	.file	"Proger-usbserial.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.text.SetupHardware,"ax",@progbits
.global	SetupHardware
	.type	SetupHardware, @function
SetupHardware:
.LFB91:
.LSM0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM1:
	in r24,84-32
	andi r24,lo8(-9)
	out 84-32,r24
.LSM2:
	ldi r18,lo8(24)
/* #APP */
 ;  143 "Proger-usbserial.c" 1
	in __tmp_reg__, __SREG__
	cli
	sts 96, r18
	sts 96, __zero_reg__
	out __SREG__,__tmp_reg__
	
 ;  0 "" 2
.LVL0:
/* #NOAPP */
.LBB157:
.LBB158:
.LSM3:
	ldi r24,lo8(51)
	ldi r25,hi8(51)
	sts 204+1,r25
	sts 204,r24
.LSM4:
	ldi r24,lo8(6)
	sts 202,r24
.LSM5:
	sts 200,__zero_reg__
.LSM6:
	sts 201,r18
.LSM7:
	sbi 42-32,3
.LSM8:
	sbi 43-32,2
.LBE158:
.LBE157:
.LBB159:
.LBB160:
.LSM9:
	in r24,42-32
	ori r24,lo8(48)
	out 42-32,r24
.LSM10:
	in r24,43-32
	ori r24,lo8(48)
	out 43-32,r24
.LBE160:
.LBE159:
.LSM11:
	call USB_Init
.LSM12:
	ldi r24,lo8(4)
	out 69-32,r24
.LSM13:
	sbi 43-32,7
.LSM14:
	sbi 42-32,7
/* epilogue start */
.LSM15:
	ret
.LFE91:
	.size	SetupHardware, .-SetupHardware
	.section	.text.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB90:
.LSM16:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
.LSM17:
	call SetupHardware
.LVL1:
.LBB161:
.LBB162:
.LSM18:
	in r24,__SREG__
.LVL2:
.LBB163:
.LBB164:
.LSM19:
/* #APP */
 ;  50 "/usr/local/CrossPack-AVR-20120217/lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL3:
/* #NOAPP */
.LBE164:
.LBE163:
.LSM20:
	ldi r18,lo8(USBtoUSART_Buffer)
	ldi r19,hi8(USBtoUSART_Buffer)
	sts USBtoUSART_Buffer+128+1,r19
	sts USBtoUSART_Buffer+128,r18
.LSM21:
	sts USBtoUSART_Buffer+130+1,r19
	sts USBtoUSART_Buffer+130,r18
.LVL4:
.LBB165:
.LBB166:
.LSM22:
	out __SREG__,r24
.LSM23:
.LVL5:
.LBE166:
.LBE165:
.LBE162:
.LBE161:
.LBB167:
.LBB168:
.LSM24:
	in r20,__SREG__
.LVL6:
.LBB169:
.LBB170:
.LSM25:
/* #APP */
 ;  50 "/usr/local/CrossPack-AVR-20120217/lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL7:
/* #NOAPP */
.LBE170:
.LBE169:
.LSM26:
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
.LVL8:
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
.LSM27:
	sts USARTtoUSB_Buffer+130+1,r25
	sts USARTtoUSB_Buffer+130,r24
.LVL9:
.LBB171:
.LBB172:
.LSM28:
	out __SREG__,r20
.LSM29:
.LBE172:
.LBE171:
.LBE168:
.LBE167:
.LSM30:
/* #APP */
 ;  87 "Proger-usbserial.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.LBB173:
.LBB174:
.LBB175:
.LBB177:
.LSM31:
	movw r28,r18
.LBE177:
.LBE175:
.LBE174:
.LBB186:
.LBB187:
.LSM32:
	mov r16,r24
	mov r15,r25
.LBE187:
.LBE186:
.LSM33:
	ldi r17,lo8(3)
.LVL10:
.L15:
.LBB194:
.LBB195:
.LBB196:
.LBB197:
.LSM34:
	in r25,__SREG__
.LVL11:
.LBB198:
.LBB199:
.LSM35:
/* #APP */
 ;  50 "/usr/local/CrossPack-AVR-20120217/lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL12:
/* #NOAPP */
.LBE199:
.LBE198:
.LSM36:
	lds r24,USBtoUSART_Buffer+132
.LVL13:
.LBB200:
.LBB201:
.LSM37:
	out __SREG__,r25
.LSM38:
.LBE201:
.LBE200:
.LBE197:
.LBE196:
.LBE195:
.LBE194:
.LSM39:
	cpi r24,lo8(-128)
	breq .L3
.LBB202:
.LSM40:
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_ReceiveByte
.LVL14:
.LSM41:
	sbrc r25,7
	rjmp .L3
.LVL15:
.LBB184:
.LBB176:
.LSM42:
	lds r30,USBtoUSART_Buffer+128
	lds r31,USBtoUSART_Buffer+128+1
.LBE176:
.LBE184:
.LSM43:
	st Z,r24
.LBB185:
.LBB183:
.LSM44:
	lds r30,USBtoUSART_Buffer+128
	lds r31,USBtoUSART_Buffer+128+1
	movw r24,r30
.LVL16:
	adiw r24,1
	sts USBtoUSART_Buffer+128+1,r25
	sts USBtoUSART_Buffer+128,r24
	ldi r18,hi8(USBtoUSART_Buffer+128)
	cpi r24,lo8(USBtoUSART_Buffer+128)
	cpc r25,r18
	brne .L4
.LSM45:
	std Z+1,r28
	std Z+2,r29
.L4:
.LBB178:
.LSM46:
	in r25,__SREG__
.LVL17:
.LBB179:
.LBB180:
.LSM47:
/* #APP */
 ;  50 "/usr/local/CrossPack-AVR-20120217/lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL18:
/* #NOAPP */
.LBE180:
.LBE179:
.LSM48:
	lds r24,USBtoUSART_Buffer+132
	subi r24,lo8(-(1))
	sts USBtoUSART_Buffer+132,r24
.LVL19:
.LBB181:
.LBB182:
.LSM49:
	out __SREG__,r25
.LSM50:
.LVL20:
.L3:
.LBE182:
.LBE181:
.LBE178:
.LBE183:
.LBE185:
.LBE202:
.LBB203:
.LBB204:
.LBB205:
.LSM51:
	in r24,__SREG__
.LVL21:
.LBB206:
.LBB207:
.LSM52:
/* #APP */
 ;  50 "/usr/local/CrossPack-AVR-20120217/lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL22:
/* #NOAPP */
.LBE207:
.LBE206:
.LSM53:
	lds r14,USARTtoUSB_Buffer+132
.LVL23:
.LBB208:
.LBB209:
.LSM54:
	out __SREG__,r24
.LSM55:
.LBE209:
.LBE208:
.LBE205:
.LBE204:
.LBE203:
.LSM56:
	sbic 53-32,0
	rjmp .L5
.LSM57:
	mov r24,r14
.LVL24:
	cpi r24,lo8(97)
	brsh .+2
	rjmp .L6
.L5:
.LSM58:
	sbi 53-32,0
.LSM59:
	lds r24,USARTtoUSB_Buffer+132
	tst r24
	breq .L17
.LVL25:
.LBB210:
.LBB211:
.LSM60:
	cbi 43-32,5
.LBE211:
.LBE210:
.LSM61:
	sts PulseMSRemaining,r17
	rjmp .L17
.LVL26:
.L10:
.LBB212:
.LBB193:
.LSM62:
	lds r30,USARTtoUSB_Buffer+130
	lds r31,USARTtoUSB_Buffer+130+1
	ld r22,Z+
.LVL27:
.LSM63:
	sts USARTtoUSB_Buffer+130+1,r31
	sts USARTtoUSB_Buffer+130,r30
	ldi r18,hi8(USARTtoUSB_Buffer+128)
	cpi r30,lo8(USARTtoUSB_Buffer+128)
	cpc r31,r18
	brne .L9
.LSM64:
	sts USARTtoUSB_Buffer+130,r16
	sts USARTtoUSB_Buffer+131,r15
.L9:
.LBB188:
.LSM65:
	in r25,__SREG__
.LVL28:
.LBB189:
.LBB190:
.LSM66:
/* #APP */
 ;  50 "/usr/local/CrossPack-AVR-20120217/lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL29:
/* #NOAPP */
.LBE190:
.LBE189:
.LSM67:
	lds r24,USARTtoUSB_Buffer+132
	subi r24,lo8(-(-1))
	sts USARTtoUSB_Buffer+132,r24
.LVL30:
.LBB191:
.LBB192:
.LSM68:
	out __SREG__,r25
.LSM69:
.LBE192:
.LBE191:
.LBE188:
.LBE193:
.LBE212:
.LSM70:
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_SendByte
.LVL31:
	dec r14
.LVL32:
.L17:
.LSM71:
	tst r14
	brne .L10
.LSM72:
	lds r24,PulseMSRemaining
	tst r24
	breq .L11
.LSM73:
	lds r24,PulseMSRemaining
	subi r24,lo8(-(-1))
	sts PulseMSRemaining,r24
	lds r24,PulseMSRemaining
	tst r24
	brne .L11
.LVL33:
.LBB213:
.LBB214:
.LSM74:
	sbi 43-32,5
.LVL34:
.L11:
.LBE214:
.LBE213:
.LSM75:
	lds r24,PulseMSRemaining+1
	tst r24
	breq .L6
.LSM76:
	lds r24,PulseMSRemaining+1
	subi r24,lo8(-(-1))
	sts PulseMSRemaining+1,r24
	lds r24,PulseMSRemaining+1
	tst r24
	brne .L6
.LVL35:
.LBB215:
.LBB216:
.LSM77:
	sbi 43-32,4
.LVL36:
.L6:
.LBE216:
.LBE215:
.LBB217:
.LBB218:
.LBB219:
.LBB220:
.LSM78:
	in r25,__SREG__
.LVL37:
.LBB221:
.LBB222:
.LSM79:
/* #APP */
 ;  50 "/usr/local/CrossPack-AVR-20120217/lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL38:
/* #NOAPP */
.LBE222:
.LBE221:
.LSM80:
	lds r24,USBtoUSART_Buffer+132
.LVL39:
.LBB223:
.LBB224:
.LSM81:
	out __SREG__,r25
.LSM82:
.LBE224:
.LBE223:
.LBE220:
.LBE219:
.LBE218:
.LBE217:
.LSM83:
	tst r24
	breq .L12
.LVL40:
.LBB225:
.LBB226:
.LSM84:
	lds r30,USBtoUSART_Buffer+130
	lds r31,USBtoUSART_Buffer+130+1
	ld r25,Z+
.LVL41:
.LSM85:
	sts USBtoUSART_Buffer+130+1,r31
	sts USBtoUSART_Buffer+130,r30
	ldi r24,hi8(USBtoUSART_Buffer+128)
	cpi r30,lo8(USBtoUSART_Buffer+128)
	cpc r31,r24
	brne .L13
.LSM86:
	sts USBtoUSART_Buffer+130,r28
	sts USBtoUSART_Buffer+131,r29
.L13:
.LBB227:
.LSM87:
	in r18,__SREG__
.LVL42:
.LBB228:
.LBB229:
.LSM88:
/* #APP */
 ;  50 "/usr/local/CrossPack-AVR-20120217/lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL43:
/* #NOAPP */
.LBE229:
.LBE228:
.LSM89:
	lds r24,USBtoUSART_Buffer+132
	subi r24,lo8(-(-1))
	sts USBtoUSART_Buffer+132,r24
.LVL44:
.LBB230:
.LBB231:
.LSM90:
	out __SREG__,r18
.LSM91:
.LVL45:
.L14:
.LBE231:
.LBE230:
.LBE227:
.LBE226:
.LBE225:
.LBB232:
.LBB233:
.LSM92:
	lds r24,200
	sbrs r24,5
	rjmp .L14
.LSM93:
	sts 206,r25
.LVL46:
.LBE233:
.LBE232:
.LBB234:
.LBB235:
.LSM94:
	cbi 43-32,4
.LBE235:
.LBE234:
.LSM95:
	sts PulseMSRemaining+1,r17
.LVL47:
.L12:
.LSM96:
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_USBTask
.LVL48:
.LSM97:
	call USB_USBTask
.LBE173:
.LSM98:
	rjmp .L15
.LFE90:
	.size	main, .-main
	.section	.text.EVENT_USB_Device_ConfigurationChanged,"ax",@progbits
.global	EVENT_USB_Device_ConfigurationChanged
	.type	EVENT_USB_Device_ConfigurationChanged, @function
EVENT_USB_Device_ConfigurationChanged:
.LFB92:
.LSM99:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM100:
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_ConfigureEndpoints
/* epilogue start */
.LSM101:
	ret
.LFE92:
	.size	EVENT_USB_Device_ConfigurationChanged, .-EVENT_USB_Device_ConfigurationChanged
	.section	.text.EVENT_USB_Device_UnhandledControlRequest,"ax",@progbits
.global	EVENT_USB_Device_UnhandledControlRequest
	.type	EVENT_USB_Device_UnhandledControlRequest, @function
EVENT_USB_Device_UnhandledControlRequest:
.LFB93:
.LSM102:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM103:
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_ProcessControlRequest
/* epilogue start */
.LSM104:
	ret
.LFE93:
	.size	EVENT_USB_Device_UnhandledControlRequest, .-EVENT_USB_Device_UnhandledControlRequest
	.section	.text.EVENT_CDC_Device_LineEncodingChanged,"ax",@progbits
.global	EVENT_CDC_Device_LineEncodingChanged
	.type	EVENT_CDC_Device_LineEncodingChanged, @function
EVENT_CDC_Device_LineEncodingChanged:
.LFB94:
.LSM105:
.LVL49:
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	movw r30,r24
.LVL50:
.LSM106:
	ldd r26,Z+20
	subi r26,lo8(-(-1))
	cpi r26,lo8(2)
	brsh .L27
	ldi r27,lo8(0)
	subi r26,lo8(-(CSWTCH.16))
	sbci r27,hi8(-(CSWTCH.16))
	ld r28,X
	rjmp .L21
.L27:
	ldi r28,lo8(0)
.L21:
.LVL51:
.LSM107:
	ldd r24,Z+19
.LVL52:
	cpi r24,lo8(2)
	brne .L22
.LSM108:
	ori r28,lo8(8)
.LVL53:
.L22:
.LSM109:
	ldd r24,Z+21
	cpi r24,lo8(7)
	breq .L25
	cpi r24,lo8(8)
	breq .L26
	cpi r24,lo8(6)
	brne .L23
.LSM110:
	ori r28,lo8(2)
.LVL54:
.LSM111:
	rjmp .L23
.L25:
.LSM112:
	ori r28,lo8(4)
.LVL55:
.LSM113:
	rjmp .L23
.L26:
.LSM114:
	ori r28,lo8(6)
.LVL56:
.L23:
.LSM115:
	sts 201,__zero_reg__
.LSM116:
	sts 200,__zero_reg__
.LSM117:
	sts 202,__zero_reg__
.LSM118:
	ldd r18,Z+15
	ldd r19,Z+16
	ldd r20,Z+17
	ldd r21,Z+18
	movw r24,r20
	movw r22,r18
	lsr r25
	ror r24
	ror r23
	ror r22
.LVL57:
	subi r22,lo8(-(1000000))
	sbci r23,hi8(-(1000000))
	sbci r24,hlo8(-(1000000))
	sbci r25,hhi8(-(1000000))
	call __udivmodsi4
.LSM119:
	subi r18,lo8(-(-1))
	sbci r19,hi8(-(-1))
	sts 204+1,r19
	sts 204,r18
.LSM120:
	sts 202,r28
.LSM121:
	ldi r24,lo8(2)
	sts 200,r24
.LSM122:
	ldi r24,lo8(-104)
	sts 201,r24
/* epilogue start */
.LSM123:
	pop r28
.LVL58:
	ret
.LFE94:
	.size	EVENT_CDC_Device_LineEncodingChanged, .-EVENT_CDC_Device_LineEncodingChanged
	.section	.text.__vector_25,"ax",@progbits
.global	__vector_25
	.type	__vector_25, @function
__vector_25:
.LFB95:
.LSM124:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r24
	push r25
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
.LSM125:
	lds r24,206
.LVL59:
.LSM126:
	in r25,62-32
	cpi r25,lo8(4)
	brne .L28
.LVL60:
.LBB236:
.LBB237:
.LSM127:
	lds r30,USARTtoUSB_Buffer+128
	lds r31,USARTtoUSB_Buffer+128+1
	st Z,r24
.LSM128:
	lds r30,USARTtoUSB_Buffer+128
	lds r31,USARTtoUSB_Buffer+128+1
	movw r24,r30
.LVL61:
	adiw r24,1
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
	ldi r18,hi8(USARTtoUSB_Buffer+128)
	cpi r24,lo8(USARTtoUSB_Buffer+128)
	cpc r25,r18
	brne .L30
.LSM129:
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	std Z+2,r25
	std Z+1,r24
.L30:
.LBB238:
.LSM130:
	in r25,__SREG__
.LVL62:
.LBB239:
.LBB240:
.LSM131:
/* #APP */
 ;  50 "/usr/local/CrossPack-AVR-20120217/lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL63:
/* #NOAPP */
.LBE240:
.LBE239:
.LSM132:
	lds r24,USARTtoUSB_Buffer+132
	subi r24,lo8(-(1))
	sts USARTtoUSB_Buffer+132,r24
.LVL64:
.LBB241:
.LBB242:
.LSM133:
	out __SREG__,r25
.LSM134:
.LVL65:
.L28:
/* epilogue start */
.LBE242:
.LBE241:
.LBE238:
.LBE237:
.LBE236:
.LSM135:
	pop r31
	pop r30
	pop r25
	pop r24
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
.LFE95:
	.size	__vector_25, .-__vector_25
	.section	.text.EVENT_CDC_Device_ControLineStateChanged,"ax",@progbits
.global	EVENT_CDC_Device_ControLineStateChanged
	.type	EVENT_CDC_Device_ControLineStateChanged, @function
EVENT_CDC_Device_ControLineStateChanged:
.LFB96:
.LSM136:
.LVL66:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM137:
	movw r30,r24
	ldd r24,Z+13
.LVL67:
.LSM138:
	sbrs r24,0
	rjmp .L32
.LSM139:
	cbi 43-32,7
	ret
.L32:
.LSM140:
	sbi 43-32,7
	ret
.LFE96:
	.size	EVENT_CDC_Device_ControLineStateChanged, .-EVENT_CDC_Device_ControLineStateChanged
.global	VirtualSerial_CDC_Interface
	.data
	.type	VirtualSerial_CDC_Interface, @object
	.size	VirtualSerial_CDC_Interface, 22
VirtualSerial_CDC_Interface:
	.byte	0
	.byte	3
	.word	64
	.byte	0
	.byte	4
	.word	64
	.byte	0
	.byte	2
	.word	8
	.byte	0
	.skip 9,0
	.comm USBtoUSART_Buffer,133,1
	.comm USARTtoUSB_Buffer,133,1
	.comm PulseMSRemaining,3,1
	.type	CSWTCH.16, @object
	.size	CSWTCH.16, 2
CSWTCH.16:
	.byte	48
	.byte	32
	.section	.debug_frame,"",@progbits
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -1
	.byte	0x24
	.byte	0xc
	.uleb128 0x20
	.uleb128 0x0
	.p2align	2
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.long	.Lframe0
	.long	.LFB91
	.long	.LFE91-.LFB91
	.p2align	2
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB90
	.long	.LFE90-.LFB90
	.p2align	2
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB92
	.long	.LFE92-.LFB92
	.p2align	2
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB93
	.long	.LFE93-.LFB93
	.p2align	2
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB94
	.long	.LFE94-.LFB94
	.p2align	2
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB95
	.long	.LFE95-.LFB95
	.p2align	2
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB96
	.long	.LFE96-.LFB96
	.p2align	2
.LEFDE12:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL2
	.long	.LVL8
	.word	0x1
	.byte	0x68
	.long	.LVL8
	.long	.LVL10
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LVL3
	.long	.LVL4
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL4
	.long	.LFE90
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL6
	.long	.LVL10
	.word	0x1
	.byte	0x64
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL7
	.long	.LVL9
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL9
	.long	.LFE90
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL14
	.long	.LVL16
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL15
	.long	.LVL16
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL17
	.long	.LVL20
	.word	0x1
	.byte	0x69
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL18
	.long	.LVL19
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LVL27
	.long	.LVL31-1
	.word	0x7
	.byte	0x3
	.long	USARTtoUSB_Buffer+130
	.byte	0x94
	.byte	0x2
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LVL29
	.long	.LVL30
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL30
	.long	.LVL32
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LVL28
	.long	.LVL31-1
	.word	0x1
	.byte	0x69
	.long	.LVL42
	.long	.LVL47
	.word	0x1
	.byte	0x62
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LVL12
	.long	.LVL13
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14-1
	.word	0x5
	.byte	0x3
	.long	USBtoUSART_Buffer+132
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LVL12
	.long	.LVL13
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL13
	.long	.LFE90
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LVL11
	.long	.LVL14-1
	.word	0x1
	.byte	0x69
	.long	.LVL21
	.long	.LVL24
	.word	0x1
	.byte	0x68
	.long	.LVL24
	.long	.LVL26
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	.LVL37
	.long	.LVL41
	.word	0x1
	.byte	0x69
	.long	.LVL41
	.long	.LVL48-1
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LVL22
	.long	.LVL23
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL23
	.long	.LVL26
	.word	0x5
	.byte	0x3
	.long	USARTtoUSB_Buffer+132
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LVL22
	.long	.LVL23
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL23
	.long	.LFE90
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LVL11
	.long	.LVL14-1
	.word	0x1
	.byte	0x69
	.long	.LVL21
	.long	.LVL24
	.word	0x1
	.byte	0x68
	.long	.LVL24
	.long	.LVL26
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	.LVL37
	.long	.LVL41
	.word	0x1
	.byte	0x69
	.long	.LVL41
	.long	.LVL48-1
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LVL25
	.long	.LVL26
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LVL33
	.long	.LVL34
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LVL35
	.long	.LVL36
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LVL38
	.long	.LVL39
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL39
	.long	.LVL48-1
	.word	0x5
	.byte	0x3
	.long	USBtoUSART_Buffer+132
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LVL38
	.long	.LVL39
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL39
	.long	.LFE90
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LVL11
	.long	.LVL14-1
	.word	0x1
	.byte	0x69
	.long	.LVL21
	.long	.LVL24
	.word	0x1
	.byte	0x68
	.long	.LVL24
	.long	.LVL26
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	.LVL37
	.long	.LVL41
	.word	0x1
	.byte	0x69
	.long	.LVL41
	.long	.LVL48-1
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LVL41
	.long	.LVL47
	.word	0x7
	.byte	0x3
	.long	USBtoUSART_Buffer+130
	.byte	0x94
	.byte	0x2
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LVL43
	.long	.LVL44
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL44
	.long	.LVL47
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LVL28
	.long	.LVL31-1
	.word	0x1
	.byte	0x69
	.long	.LVL42
	.long	.LVL47
	.word	0x1
	.byte	0x62
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LVL45
	.long	.LVL47
	.word	0x7
	.byte	0x3
	.long	USBtoUSART_Buffer+130
	.byte	0x94
	.byte	0x2
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LVL46
	.long	.LVL47
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LVL49
	.long	.LVL52
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL52
	.long	.LVL57
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LVL50
	.long	.LVL51
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL51
	.long	.LVL53
	.word	0x1
	.byte	0x6c
	.long	.LVL53
	.long	.LVL54
	.word	0x1
	.byte	0x6c
	.long	.LVL54
	.long	.LVL55
	.word	0x1
	.byte	0x6c
	.long	.LVL55
	.long	.LVL56
	.word	0x1
	.byte	0x6c
	.long	.LVL56
	.long	.LVL58
	.word	0x1
	.byte	0x6c
	.long	.LVL58
	.long	.LFE94
	.word	0x2
	.byte	0x8
	.byte	0xca
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LVL59
	.long	.LVL61
	.word	0x1
	.byte	0x68
	.long	.LVL61
	.long	.LVL65
	.word	0x7
	.byte	0x3
	.long	USARTtoUSB_Buffer+128
	.byte	0x94
	.byte	0x2
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LVL60
	.long	.LVL61
	.word	0x1
	.byte	0x68
	.long	.LVL61
	.long	.LVL65
	.word	0x7
	.byte	0x3
	.long	USARTtoUSB_Buffer+128
	.byte	0x94
	.byte	0x2
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LVL62
	.long	.LVL65
	.word	0x1
	.byte	0x69
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LVL63
	.long	.LVL64
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL64
	.long	.LVL65
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LVL66
	.long	.LVL67
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL67
	.long	.LFE96
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LVL66
	.long	.LVL67
	.word	0x7
	.byte	0x88
	.sleb128 13
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.long	.LVL67
	.long	.LFE96
	.word	0x7
	.byte	0x8e
	.sleb128 13
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xacc
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF90
	.byte	0x1
	.long	.LASF91
	.long	.LASF92
	.long	0x0
	.long	0x0
	.long	.Ldebug_ranges0+0x68
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x6
	.byte	0x7a
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF3
	.byte	0x6
	.byte	0x7b
	.long	0x4d
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF4
	.byte	0x6
	.byte	0x7c
	.long	0x5f
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x6
	.byte	0x7e
	.long	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.long	.LASF17
	.byte	0x1
	.byte	0x7
	.byte	0x72
	.long	0xbe
	.uleb128 0x6
	.long	.LASF11
	.sleb128 0
	.uleb128 0x6
	.long	.LASF12
	.sleb128 1
	.uleb128 0x6
	.long	.LASF13
	.sleb128 2
	.uleb128 0x6
	.long	.LASF14
	.sleb128 3
	.uleb128 0x6
	.long	.LASF15
	.sleb128 4
	.uleb128 0x6
	.long	.LASF16
	.sleb128 5
	.byte	0x0
	.uleb128 0x5
	.long	.LASF18
	.byte	0x1
	.byte	0x8
	.byte	0x9b
	.long	0xdd
	.uleb128 0x6
	.long	.LASF19
	.sleb128 0
	.uleb128 0x6
	.long	.LASF20
	.sleb128 1
	.uleb128 0x6
	.long	.LASF21
	.sleb128 2
	.byte	0x0
	.uleb128 0x5
	.long	.LASF22
	.byte	0x1
	.byte	0x8
	.byte	0xa3
	.long	0x108
	.uleb128 0x6
	.long	.LASF23
	.sleb128 0
	.uleb128 0x6
	.long	.LASF24
	.sleb128 1
	.uleb128 0x6
	.long	.LASF25
	.sleb128 2
	.uleb128 0x6
	.long	.LASF26
	.sleb128 3
	.uleb128 0x6
	.long	.LASF27
	.sleb128 4
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF28
	.uleb128 0x7
	.byte	0xd
	.byte	0x9
	.byte	0x64
	.long	0x1a4
	.uleb128 0x8
	.long	.LASF29
	.byte	0x9
	.byte	0x66
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF30
	.byte	0x9
	.byte	0x68
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF31
	.byte	0x9
	.byte	0x69
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF32
	.byte	0x9
	.byte	0x6a
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF33
	.byte	0x9
	.byte	0x6c
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.long	.LASF34
	.byte	0x9
	.byte	0x6d
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.long	.LASF35
	.byte	0x9
	.byte	0x6e
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF36
	.byte	0x9
	.byte	0x70
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x8
	.long	.LASF37
	.byte	0x9
	.byte	0x71
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.long	.LASF38
	.byte	0x9
	.byte	0x72
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF39
	.uleb128 0x7
	.byte	0x2
	.byte	0x9
	.byte	0x78
	.long	0x1d0
	.uleb128 0x8
	.long	.LASF40
	.byte	0x9
	.byte	0x7a
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF41
	.byte	0x9
	.byte	0x7d
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x7
	.byte	0x7
	.byte	0x9
	.byte	0x83
	.long	0x211
	.uleb128 0x8
	.long	.LASF42
	.byte	0x9
	.byte	0x85
	.long	0x6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF43
	.byte	0x9
	.byte	0x86
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF44
	.byte	0x9
	.byte	0x89
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.long	.LASF45
	.byte	0x9
	.byte	0x8c
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0x7
	.byte	0x9
	.byte	0x9
	.byte	0x76
	.long	0x236
	.uleb128 0x8
	.long	.LASF46
	.byte	0x9
	.byte	0x81
	.long	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF47
	.byte	0x9
	.byte	0x8d
	.long	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x7
	.byte	0x16
	.byte	0x9
	.byte	0x62
	.long	0x25b
	.uleb128 0x8
	.long	.LASF48
	.byte	0x9
	.byte	0x73
	.long	0x25b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF49
	.byte	0x9
	.byte	0x90
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x9
	.long	0x10f
	.uleb128 0x3
	.long	.LASF50
	.byte	0x9
	.byte	0x93
	.long	0x236
	.uleb128 0x7
	.byte	0x85
	.byte	0x4
	.byte	0x46
	.long	0x2ae
	.uleb128 0x8
	.long	.LASF51
	.byte	0x4
	.byte	0x48
	.long	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.string	"In"
	.byte	0x4
	.byte	0x49
	.long	0x2be
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.string	"Out"
	.byte	0x4
	.byte	0x4a
	.long	0x2be
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF52
	.byte	0x4
	.byte	0x4b
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.byte	0x0
	.uleb128 0xb
	.long	0x30
	.long	0x2be
	.uleb128 0xc
	.long	0x5f
	.byte	0x7f
	.byte	0x0
	.uleb128 0xd
	.byte	0x2
	.long	0x30
	.uleb128 0x3
	.long	.LASF53
	.byte	0x4
	.byte	0x4c
	.long	0x26b
	.uleb128 0x7
	.byte	0x3
	.byte	0x1
	.byte	0x2e
	.long	0x302
	.uleb128 0x8
	.long	.LASF54
	.byte	0x1
	.byte	0x30
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF55
	.byte	0x1
	.byte	0x31
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF56
	.byte	0x1
	.byte	0x32
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xe
	.long	.LASF62
	.byte	0x5
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x31b
	.uleb128 0xf
	.string	"__s"
	.byte	0x5
	.byte	0x44
	.long	0x31b
	.byte	0x0
	.uleb128 0xd
	.byte	0x2
	.long	0x321
	.uleb128 0x9
	.long	0x30
	.uleb128 0x10
	.long	.LASF93
	.byte	0x5
	.byte	0x30
	.byte	0x1
	.long	0x30
	.byte	0x3
	.uleb128 0x11
	.long	.LASF59
	.byte	0x4
	.byte	0x6b
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0x373
	.uleb128 0x12
	.long	.LASF51
	.byte	0x4
	.byte	0x6b
	.long	0x373
	.uleb128 0x13
	.long	.LASF52
	.byte	0x4
	.byte	0x6d
	.long	0x30
	.uleb128 0x14
	.uleb128 0x13
	.long	.LASF57
	.byte	0x4
	.byte	0x6f
	.long	0x30
	.uleb128 0x13
	.long	.LASF58
	.byte	0x4
	.byte	0x6f
	.long	0x30
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x378
	.uleb128 0xd
	.byte	0x2
	.long	0x2c4
	.uleb128 0x11
	.long	.LASF60
	.byte	0x4
	.byte	0x7f
	.byte	0x1
	.long	0x1a4
	.byte	0x3
	.long	0x39b
	.uleb128 0x12
	.long	.LASF51
	.byte	0x4
	.byte	0x7f
	.long	0x373
	.byte	0x0
	.uleb128 0x11
	.long	.LASF61
	.byte	0x4
	.byte	0x90
	.byte	0x1
	.long	0x1a4
	.byte	0x3
	.long	0x3b8
	.uleb128 0x12
	.long	.LASF51
	.byte	0x4
	.byte	0x90
	.long	0x373
	.byte	0x0
	.uleb128 0xe
	.long	.LASF63
	.byte	0x2
	.byte	0x63
	.byte	0x1
	.byte	0x3
	.long	0x3dc
	.uleb128 0x12
	.long	.LASF64
	.byte	0x2
	.byte	0x63
	.long	0x3dc
	.uleb128 0x12
	.long	.LASF65
	.byte	0x2
	.byte	0x64
	.long	0x3e1
	.byte	0x0
	.uleb128 0x9
	.long	0x6d
	.uleb128 0x9
	.long	0x1a4
	.uleb128 0x15
	.long	.LASF94
	.byte	0x3
	.byte	0x43
	.byte	0x1
	.byte	0x3
	.uleb128 0xe
	.long	.LASF66
	.byte	0x4
	.byte	0x55
	.byte	0x1
	.byte	0x3
	.long	0x420
	.uleb128 0x12
	.long	.LASF51
	.byte	0x4
	.byte	0x55
	.long	0x373
	.uleb128 0x14
	.uleb128 0x13
	.long	.LASF57
	.byte	0x4
	.byte	0x57
	.long	0x30
	.uleb128 0x13
	.long	.LASF58
	.byte	0x4
	.byte	0x57
	.long	0x30
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	.LASF67
	.byte	0x4
	.byte	0x9e
	.byte	0x1
	.byte	0x3
	.long	0x45c
	.uleb128 0x12
	.long	.LASF51
	.byte	0x4
	.byte	0x9e
	.long	0x373
	.uleb128 0x12
	.long	.LASF68
	.byte	0x4
	.byte	0x9f
	.long	0x321
	.uleb128 0x14
	.uleb128 0x13
	.long	.LASF57
	.byte	0x4
	.byte	0xa6
	.long	0x30
	.uleb128 0x13
	.long	.LASF58
	.byte	0x4
	.byte	0xa6
	.long	0x30
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	.LASF69
	.byte	0x3
	.byte	0x49
	.byte	0x1
	.byte	0x3
	.long	0x475
	.uleb128 0x12
	.long	.LASF70
	.byte	0x3
	.byte	0x49
	.long	0x321
	.byte	0x0
	.uleb128 0x11
	.long	.LASF71
	.byte	0x4
	.byte	0xb6
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0x4b5
	.uleb128 0x12
	.long	.LASF51
	.byte	0x4
	.byte	0xb6
	.long	0x373
	.uleb128 0x13
	.long	.LASF68
	.byte	0x4
	.byte	0xb8
	.long	0x30
	.uleb128 0x14
	.uleb128 0x13
	.long	.LASF57
	.byte	0x4
	.byte	0xbd
	.long	0x30
	.uleb128 0x13
	.long	.LASF58
	.byte	0x4
	.byte	0xbd
	.long	0x30
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	.LASF72
	.byte	0x3
	.byte	0x4e
	.byte	0x1
	.byte	0x3
	.long	0x4ce
	.uleb128 0x12
	.long	.LASF70
	.byte	0x3
	.byte	0x4e
	.long	0x321
	.byte	0x0
	.uleb128 0xe
	.long	.LASF73
	.byte	0x2
	.byte	0x8c
	.byte	0x1
	.byte	0x3
	.long	0x4e7
	.uleb128 0x12
	.long	.LASF74
	.byte	0x2
	.byte	0x8c
	.long	0x4e7
	.byte	0x0
	.uleb128 0x9
	.long	0x108
	.uleb128 0x16
	.byte	0x1
	.long	.LASF79
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.long	.LFB91
	.long	.LFE91
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x536
	.uleb128 0x17
	.long	0x3b8
	.long	.LBB157
	.long	.LBE157
	.byte	0x1
	.byte	0x92
	.long	0x526
	.uleb128 0x18
	.long	0x3d0
	.byte	0x0
	.uleb128 0x19
	.long	0x3c5
	.word	0x2580
	.byte	0x0
	.uleb128 0x1a
	.long	0x3e6
	.long	.LBB159
	.long	.LBE159
	.byte	0x1
	.byte	0x93
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF95
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.long	0x4d
	.long	.LFB90
	.long	.LFE90
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x928
	.uleb128 0x17
	.long	0x3ef
	.long	.LBB161
	.long	.LBE161
	.byte	0x1
	.byte	0x54
	.long	0x5ad
	.uleb128 0x1c
	.long	0x3fc
	.byte	0x6
	.byte	0x3
	.long	USBtoUSART_Buffer
	.byte	0x9f
	.uleb128 0x1d
	.long	.LBB162
	.long	.LBE162
	.uleb128 0x1e
	.long	0x408
	.long	.LLST0
	.uleb128 0x1e
	.long	0x413
	.long	.LLST1
	.uleb128 0x1a
	.long	0x326
	.long	.LBB163
	.long	.LBE163
	.byte	0x4
	.byte	0x57
	.uleb128 0x1a
	.long	0x302
	.long	.LBB165
	.long	.LBE165
	.byte	0x4
	.byte	0x57
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.long	0x3ef
	.long	.LBB167
	.long	.LBE167
	.byte	0x1
	.byte	0x55
	.long	0x607
	.uleb128 0x1c
	.long	0x3fc
	.byte	0x6
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0x9f
	.uleb128 0x1d
	.long	.LBB168
	.long	.LBE168
	.uleb128 0x1e
	.long	0x408
	.long	.LLST2
	.uleb128 0x1e
	.long	0x413
	.long	.LLST3
	.uleb128 0x1a
	.long	0x326
	.long	.LBB169
	.long	.LBE169
	.byte	0x4
	.byte	0x57
	.uleb128 0x1a
	.long	0x302
	.long	.LBB171
	.long	.LBE171
	.byte	0x4
	.byte	0x57
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	.LBB173
	.long	.LBE173
	.uleb128 0x1f
	.long	.LASF75
	.byte	0x1
	.byte	0x66
	.long	0x30
	.byte	0x1
	.byte	0x5e
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x0
	.long	0x68e
	.uleb128 0x21
	.long	.LASF76
	.byte	0x1
	.byte	0x5e
	.long	0x42
	.long	.LLST4
	.uleb128 0x22
	.long	0x420
	.long	.LBB175
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x62
	.uleb128 0x23
	.long	0x438
	.long	.LLST5
	.uleb128 0x24
	.long	0x42d
	.uleb128 0x1d
	.long	.LBB178
	.long	.LBE178
	.uleb128 0x1e
	.long	0x444
	.long	.LLST6
	.uleb128 0x1e
	.long	0x44f
	.long	.LLST7
	.uleb128 0x1a
	.long	0x326
	.long	.LBB179
	.long	.LBE179
	.byte	0x4
	.byte	0xa6
	.uleb128 0x1a
	.long	0x302
	.long	.LBB181
	.long	.LBE181
	.byte	0x4
	.byte	0xa6
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x475
	.long	.LBB186
	.long	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x72
	.long	0x6f0
	.uleb128 0x24
	.long	0x486
	.uleb128 0x26
	.long	.Ldebug_ranges0+0x50
	.uleb128 0x1e
	.long	0x491
	.long	.LLST8
	.uleb128 0x1d
	.long	.LBB188
	.long	.LBE188
	.uleb128 0x1e
	.long	0x4a8
	.long	.LLST9
	.uleb128 0x1e
	.long	0x49d
	.long	.LLST10
	.uleb128 0x1a
	.long	0x326
	.long	.LBB189
	.long	.LBE189
	.byte	0x4
	.byte	0xbd
	.uleb128 0x1a
	.long	0x302
	.long	.LBB191
	.long	.LBE191
	.byte	0x4
	.byte	0xbd
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.long	0x37e
	.long	.LBB194
	.long	.LBE194
	.byte	0x1
	.byte	0x5c
	.long	0x761
	.uleb128 0x27
	.long	0x333
	.long	.LBB195
	.long	.LBE195
	.byte	0x4
	.byte	0x81
	.uleb128 0x1d
	.long	.LBB196
	.long	.LBE196
	.uleb128 0x1e
	.long	0x34f
	.long	.LLST11
	.uleb128 0x1d
	.long	.LBB197
	.long	.LBE197
	.uleb128 0x1e
	.long	0x366
	.long	.LLST12
	.uleb128 0x1e
	.long	0x35b
	.long	.LLST13
	.uleb128 0x1a
	.long	0x326
	.long	.LBB198
	.long	.LBE198
	.byte	0x4
	.byte	0x6f
	.uleb128 0x1a
	.long	0x302
	.long	.LBB200
	.long	.LBE200
	.byte	0x4
	.byte	0x6f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.long	0x333
	.long	.LBB203
	.long	.LBE203
	.byte	0x1
	.byte	0x66
	.long	0x7c2
	.uleb128 0x1d
	.long	.LBB204
	.long	.LBE204
	.uleb128 0x1e
	.long	0x34f
	.long	.LLST14
	.uleb128 0x1d
	.long	.LBB205
	.long	.LBE205
	.uleb128 0x1e
	.long	0x366
	.long	.LLST15
	.uleb128 0x1e
	.long	0x35b
	.long	.LLST16
	.uleb128 0x1a
	.long	0x326
	.long	.LBB206
	.long	.LBE206
	.byte	0x4
	.byte	0x6f
	.uleb128 0x1a
	.long	0x302
	.long	.LBB208
	.long	.LBE208
	.byte	0x4
	.byte	0x6f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.long	0x45c
	.long	.LBB210
	.long	.LBE210
	.byte	0x1
	.byte	0x6c
	.long	0x7df
	.uleb128 0x23
	.long	0x469
	.long	.LLST17
	.byte	0x0
	.uleb128 0x17
	.long	0x4b5
	.long	.LBB213
	.long	.LBE213
	.byte	0x1
	.byte	0x76
	.long	0x7fc
	.uleb128 0x23
	.long	0x4c2
	.long	.LLST18
	.byte	0x0
	.uleb128 0x17
	.long	0x4b5
	.long	.LBB215
	.long	.LBE215
	.byte	0x1
	.byte	0x7a
	.long	0x819
	.uleb128 0x23
	.long	0x4c2
	.long	.LLST19
	.byte	0x0
	.uleb128 0x17
	.long	0x39b
	.long	.LBB217
	.long	.LBE217
	.byte	0x1
	.byte	0x7e
	.long	0x88a
	.uleb128 0x27
	.long	0x333
	.long	.LBB218
	.long	.LBE218
	.byte	0x4
	.byte	0x92
	.uleb128 0x1d
	.long	.LBB219
	.long	.LBE219
	.uleb128 0x1e
	.long	0x34f
	.long	.LLST20
	.uleb128 0x1d
	.long	.LBB220
	.long	.LBE220
	.uleb128 0x1e
	.long	0x366
	.long	.LLST21
	.uleb128 0x1e
	.long	0x35b
	.long	.LLST22
	.uleb128 0x1a
	.long	0x326
	.long	.LBB221
	.long	.LBE221
	.byte	0x4
	.byte	0x6f
	.uleb128 0x1a
	.long	0x302
	.long	.LBB223
	.long	.LBE223
	.byte	0x4
	.byte	0x6f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.long	0x475
	.long	.LBB225
	.long	.LBE225
	.byte	0x1
	.byte	0x7f
	.long	0x8f0
	.uleb128 0x24
	.long	0x486
	.uleb128 0x1d
	.long	.LBB226
	.long	.LBE226
	.uleb128 0x1e
	.long	0x491
	.long	.LLST23
	.uleb128 0x1d
	.long	.LBB227
	.long	.LBE227
	.uleb128 0x1e
	.long	0x4a8
	.long	.LLST24
	.uleb128 0x1e
	.long	0x49d
	.long	.LLST25
	.uleb128 0x1a
	.long	0x326
	.long	.LBB228
	.long	.LBE228
	.byte	0x4
	.byte	0xbd
	.uleb128 0x1a
	.long	0x302
	.long	.LBB230
	.long	.LBE230
	.byte	0x4
	.byte	0xbd
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.long	0x4ce
	.long	.LBB232
	.long	.LBE232
	.byte	0x1
	.byte	0x7f
	.long	0x90d
	.uleb128 0x23
	.long	0x4db
	.long	.LLST26
	.byte	0x0
	.uleb128 0x27
	.long	0x45c
	.long	.LBB234
	.long	.LBE234
	.byte	0x1
	.byte	0x81
	.uleb128 0x23
	.long	0x469
	.long	.LLST27
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF77
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.long	.LFB92
	.long	.LFE92
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF78
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.long	.LFB93
	.long	.LFE93
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.long	.LFB94
	.long	.LFE94
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x98a
	.uleb128 0x29
	.long	.LASF84
	.byte	0x1
	.byte	0xae
	.long	0x98a
	.long	.LLST28
	.uleb128 0x21
	.long	.LASF81
	.byte	0x1
	.byte	0xb0
	.long	0x30
	.long	.LLST29
	.byte	0x0
	.uleb128 0x9
	.long	0x98f
	.uleb128 0xd
	.byte	0x2
	.long	0x260
	.uleb128 0x16
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.long	.LFB95
	.long	.LFE95
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xa16
	.uleb128 0x21
	.long	.LASF76
	.byte	0x1
	.byte	0xe0
	.long	0x30
	.long	.LLST30
	.uleb128 0x27
	.long	0x420
	.long	.LBB236
	.long	.LBE236
	.byte	0x1
	.byte	0xe3
	.uleb128 0x23
	.long	0x438
	.long	.LLST31
	.uleb128 0x24
	.long	0x42d
	.uleb128 0x1d
	.long	.LBB238
	.long	.LBE238
	.uleb128 0x1e
	.long	0x444
	.long	.LLST32
	.uleb128 0x1e
	.long	0x44f
	.long	.LLST33
	.uleb128 0x1a
	.long	0x326
	.long	.LBB239
	.long	.LBE239
	.byte	0x4
	.byte	0xa6
	.uleb128 0x1a
	.long	0x302
	.long	.LBB241
	.long	.LBE241
	.byte	0x4
	.byte	0xa6
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF83
	.byte	0x1
	.byte	0xea
	.byte	0x1
	.long	.LFB96
	.long	.LFE96
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xa4e
	.uleb128 0x29
	.long	.LASF84
	.byte	0x1
	.byte	0xea
	.long	0x98a
	.long	.LLST34
	.uleb128 0x21
	.long	.LASF85
	.byte	0x1
	.byte	0xec
	.long	0x1a4
	.long	.LLST35
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF86
	.byte	0x1
	.byte	0x28
	.long	0x2c4
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF87
	.byte	0x1
	.byte	0x2b
	.long	0x2c4
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF88
	.byte	0x1
	.byte	0x33
	.long	0xa75
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	0x2cf
	.uleb128 0x2a
	.long	.LASF89
	.byte	0x1
	.byte	0x39
	.long	0x260
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.long	.LASF86
	.byte	0x1
	.byte	0x28
	.long	0x2c4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USBtoUSART_Buffer
	.uleb128 0x2c
	.long	.LASF87
	.byte	0x1
	.byte	0x2b
	.long	0x2c4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.uleb128 0x2c
	.long	.LASF88
	.byte	0x1
	.byte	0x33
	.long	0xa75
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PulseMSRemaining
	.uleb128 0x2c
	.long	.LASF89
	.byte	0x1
	.byte	0x39
	.long	0x260
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	VirtualSerial_CDC_Interface
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x146
	.word	0x2
	.long	.Ldebug_info0
	.long	0xad0
	.long	0x4ec
	.string	"SetupHardware"
	.long	0x536
	.string	"main"
	.long	0x928
	.string	"EVENT_USB_Device_ConfigurationChanged"
	.long	0x93d
	.string	"EVENT_USB_Device_UnhandledControlRequest"
	.long	0x952
	.string	"EVENT_CDC_Device_LineEncodingChanged"
	.long	0x995
	.string	"__vector_25"
	.long	0xa16
	.string	"EVENT_CDC_Device_ControLineStateChanged"
	.long	0xa87
	.string	"USBtoUSART_Buffer"
	.long	0xa99
	.string	"USARTtoUSB_Buffer"
	.long	0xaab
	.string	"PulseMSRemaining"
	.long	0xabd
	.string	"VirtualSerial_CDC_Interface"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0xc1
	.word	0x2
	.long	.Ldebug_info0
	.long	0xad0
	.long	0x30
	.string	"uint8_t"
	.long	0x42
	.string	"int16_t"
	.long	0x54
	.string	"uint16_t"
	.long	0x6d
	.string	"uint32_t"
	.long	0x8d
	.string	"USB_Device_States_t"
	.long	0xbe
	.string	"CDC_LineEncodingFormats_t"
	.long	0xdd
	.string	"CDC_LineEncodingParity_t"
	.long	0x260
	.string	"USB_ClassInfo_CDC_Device_t"
	.long	0x2c4
	.string	"RingBuff_t"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x4c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.word	0x0
	.word	0x0
	.long	.LFB91
	.long	.LFE91-.LFB91
	.long	.LFB90
	.long	.LFE90-.LFB90
	.long	.LFB92
	.long	.LFE92-.LFB92
	.long	.LFB93
	.long	.LFE93-.LFB93
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	.LFB96
	.long	.LFE96-.LFB96
	.long	0x0
	.long	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB174
	.long	.LBE174
	.long	.LBB202
	.long	.LBE202
	.long	0x0
	.long	0x0
	.long	.LBB175
	.long	.LBE175
	.long	.LBB185
	.long	.LBE185
	.long	.LBB184
	.long	.LBE184
	.long	0x0
	.long	0x0
	.long	.LBB186
	.long	.LBE186
	.long	.LBB212
	.long	.LBE212
	.long	0x0
	.long	0x0
	.long	.LBB187
	.long	.LBE187
	.long	.LBB193
	.long	.LBE193
	.long	0x0
	.long	0x0
	.long	.LFB91
	.long	.LFE91
	.long	.LFB90
	.long	.LFE90
	.long	.LFB92
	.long	.LFE92
	.long	.LFB93
	.long	.LFE93
	.long	.LFB94
	.long	.LFE94
	.long	.LFB95
	.long	.LFE95
	.long	.LFB96
	.long	.LFE96
	.long	0x0
	.long	0x0
	.section	.debug_line
	.long	.LELT0-.LSLT0
.LSLT0:
	.word	0x2
	.long	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf5
	.byte	0xa
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.ascii	"..//LUFA/Drivers/Peripheral"
	.byte	0
	.ascii	"..//LUFA/Drivers/USB/Class/Device"
	.byte	0
	.ascii	"..//LUFA/Drivers/USB/Class/Device/../Common"
	.byte	0
	.ascii	"..//LUFA/Drivers/USB/HighLevel/../LowLevel"
	.byte	0
	.ascii	"Lib"
	.byte	0
	.ascii	"Board"
	.byte	0
	.ascii	"/usr/local/CrossPack-AVR-20120217/lib/gcc/avr/4.5.1/../../.."
	.ascii	"/../avr/include"
	.byte	0
	.ascii	"/usr/local/CrossPack-AVR-20120217/lib/gcc/avr/4.5.1/../../.."
	.ascii	"/../avr/include/util"
	.byte	0
	.byte	0x0
	.string	"Proger-usbserial.c"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.string	"Serial.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"LEDs.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"LightweightRingBuff.h"
	.uleb128 0x5
	.uleb128 0x0
	.uleb128 0x0
	.string	"util/atomic.h"
	.uleb128 0x7
	.uleb128 0x0
	.uleb128 0x0
	.string	"stdint.h"
	.uleb128 0x7
	.uleb128 0x0
	.uleb128 0x0
	.string	"Device.h"
	.uleb128 0x4
	.uleb128 0x0
	.uleb128 0x0
	.string	"../Common/CDC.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"CDC.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.byte	0x0
.LELTP0:
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.Letext0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM0
	.byte	0x9f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM1
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM2
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM3
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -41
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM4
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM5
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM6
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM7
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM8
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM9
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -40
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM10
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM11
	.byte	0x4
	.uleb128 0x1
	.byte	0x62
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM12
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM13
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM14
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM15
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE91
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM16
	.byte	0x64
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM17
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM18
	.byte	0x4
	.uleb128 0x4
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM19
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -37
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM20
	.byte	0x4
	.uleb128 0x4
	.byte	0x3b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM21
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM22
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM23
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM24
	.byte	0x4
	.uleb128 0x4
	.byte	0x24
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM25
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -37
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM26
	.byte	0x4
	.uleb128 0x4
	.byte	0x3b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM27
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM28
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM29
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM30
	.byte	0x4
	.uleb128 0x1
	.byte	0x24
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM31
	.byte	0x4
	.uleb128 0x4
	.byte	0x61
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM32
	.byte	0x2b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM33
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -78
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM34
	.byte	0x4
	.uleb128 0x4
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM35
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -61
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM36
	.byte	0x4
	.uleb128 0x4
	.byte	0x53
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM37
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -43
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM38
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM39
	.byte	0x4
	.uleb128 0x1
	.byte	0x29
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM40
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM41
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM42
	.byte	0x4
	.uleb128 0x4
	.byte	0x54
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM43
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -63
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM44
	.byte	0x4
	.uleb128 0x4
	.byte	0x55
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM45
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM46
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM47
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -116
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM48
	.byte	0x4
	.uleb128 0x4
	.byte	0x8a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM49
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -98
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM50
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM51
	.byte	0x4
	.uleb128 0x4
	.byte	0x3c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM52
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -61
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM53
	.byte	0x4
	.uleb128 0x4
	.byte	0x53
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM54
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -43
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM55
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM56
	.byte	0x4
	.uleb128 0x1
	.byte	0x34
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM57
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM58
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM59
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM60
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -32
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM61
	.byte	0x4
	.uleb128 0x1
	.byte	0x36
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM62
	.byte	0x4
	.uleb128 0x4
	.byte	0x5f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM63
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM64
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM65
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM66
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -139
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM67
	.byte	0x4
	.uleb128 0x4
	.byte	0xa1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM68
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -121
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM69
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM70
	.byte	0x4
	.uleb128 0x1
	.byte	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM71
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM72
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM73
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM74
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -37
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM75
	.byte	0x4
	.uleb128 0x1
	.byte	0x3d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM76
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM77
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -41
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM78
	.byte	0x4
	.uleb128 0x4
	.byte	0x33
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM79
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -61
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM80
	.byte	0x4
	.uleb128 0x4
	.byte	0x53
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM81
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -43
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM82
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM83
	.byte	0x4
	.uleb128 0x1
	.byte	0x4b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM84
	.byte	0x4
	.uleb128 0x4
	.byte	0x4e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM85
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM86
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM87
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM88
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -139
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM89
	.byte	0x4
	.uleb128 0x4
	.byte	0xa1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM90
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -121
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM91
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM92
	.byte	0x4
	.uleb128 0x2
	.byte	0x5b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM93
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM94
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -68
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM95
	.byte	0x4
	.uleb128 0x1
	.byte	0x4b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM96
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM97
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM98
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE90
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM99
	.byte	0xb3
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM100
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM101
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE92
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM102
	.byte	0xb9
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM103
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM104
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE93
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM105
	.byte	0xc2
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM106
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM107
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM108
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM109
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM110
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM111
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM112
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM113
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM114
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM115
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM116
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM117
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM118
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM119
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM120
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM121
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM122
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM123
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE94
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM124
	.byte	0xf2
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM125
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM126
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM127
	.byte	0x4
	.uleb128 0x4
	.byte	0x3
	.sleb128 -65
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM128
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM129
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM130
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM131
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -116
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM132
	.byte	0x4
	.uleb128 0x4
	.byte	0x8a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM133
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -98
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM134
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM135
	.byte	0x4
	.uleb128 0x1
	.byte	0xb1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE95
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM136
	.byte	0x3
	.sleb128 234
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM137
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM138
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM139
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM140
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE96
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF71:
	.string	"RingBuffer_Remove"
.LASF89:
	.string	"VirtualSerial_CDC_Interface"
.LASF94:
	.string	"LEDs_Init"
.LASF93:
	.string	"__iCliRetVal"
.LASF82:
	.string	"__vector_25"
.LASF10:
	.string	"long long unsigned int"
.LASF61:
	.string	"RingBuffer_IsEmpty"
.LASF11:
	.string	"DEVICE_STATE_Unattached"
.LASF13:
	.string	"DEVICE_STATE_Default"
.LASF3:
	.string	"int16_t"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF42:
	.string	"BaudRateBPS"
.LASF64:
	.string	"BaudRate"
.LASF23:
	.string	"CDC_PARITY_None"
.LASF63:
	.string	"Serial_Init"
.LASF6:
	.string	"long int"
.LASF55:
	.string	"RxLEDPulse"
.LASF54:
	.string	"TxLEDPulse"
.LASF43:
	.string	"CharFormat"
.LASF35:
	.string	"DataOUTEndpointDoubleBank"
.LASF4:
	.string	"uint16_t"
.LASF17:
	.string	"USB_Device_States_t"
.LASF30:
	.string	"DataINEndpointNumber"
.LASF70:
	.string	"LEDMask"
.LASF41:
	.string	"DeviceToHost"
.LASF58:
	.string	"__ToDo"
.LASF5:
	.string	"unsigned int"
.LASF87:
	.string	"USARTtoUSB_Buffer"
.LASF27:
	.string	"CDC_PARITY_Space"
.LASF8:
	.string	"long unsigned int"
.LASF18:
	.string	"CDC_LineEncodingFormats_t"
.LASF26:
	.string	"CDC_PARITY_Mark"
.LASF57:
	.string	"sreg_save"
.LASF19:
	.string	"CDC_LINEENCODING_OneStopBit"
.LASF69:
	.string	"LEDs_TurnOnLEDs"
.LASF15:
	.string	"DEVICE_STATE_Configured"
.LASF22:
	.string	"CDC_LineEncodingParity_t"
.LASF48:
	.string	"Config"
.LASF78:
	.string	"EVENT_USB_Device_UnhandledControlRequest"
.LASF67:
	.string	"RingBuffer_Insert"
.LASF34:
	.string	"DataOUTEndpointSize"
.LASF16:
	.string	"DEVICE_STATE_Suspended"
.LASF29:
	.string	"ControlInterfaceNumber"
.LASF24:
	.string	"CDC_PARITY_Odd"
.LASF31:
	.string	"DataINEndpointSize"
.LASF33:
	.string	"DataOUTEndpointNumber"
.LASF52:
	.string	"Count"
.LASF21:
	.string	"CDC_LINEENCODING_TwoStopBits"
.LASF36:
	.string	"NotificationEndpointNumber"
.LASF14:
	.string	"DEVICE_STATE_Addressed"
.LASF12:
	.string	"DEVICE_STATE_Powered"
.LASF32:
	.string	"DataINEndpointDoubleBank"
.LASF76:
	.string	"ReceivedByte"
.LASF81:
	.string	"ConfigMask"
.LASF79:
	.string	"SetupHardware"
.LASF75:
	.string	"BufferCount"
.LASF39:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF65:
	.string	"DoubleSpeed"
.LASF92:
	.string	"/Users/erikkallen/p/progerfirmware/proger-usbserial"
.LASF37:
	.string	"NotificationEndpointSize"
.LASF59:
	.string	"RingBuffer_GetCount"
.LASF72:
	.string	"LEDs_TurnOffLEDs"
.LASF7:
	.string	"uint32_t"
.LASF25:
	.string	"CDC_PARITY_Even"
.LASF28:
	.string	"char"
.LASF49:
	.string	"State"
.LASF85:
	.string	"CurrentDTRState"
.LASF86:
	.string	"USBtoUSART_Buffer"
.LASF20:
	.string	"CDC_LINEENCODING_OneAndAHalfStopBits"
.LASF83:
	.string	"EVENT_CDC_Device_ControLineStateChanged"
.LASF56:
	.string	"PingPongLEDPulse"
.LASF46:
	.string	"ControlLineStates"
.LASF88:
	.string	"PulseMSRemaining"
.LASF62:
	.string	"__iRestore"
.LASF66:
	.string	"RingBuffer_InitBuffer"
.LASF53:
	.string	"RingBuff_t"
.LASF60:
	.string	"RingBuffer_IsFull"
.LASF47:
	.string	"LineEncoding"
.LASF51:
	.string	"Buffer"
.LASF45:
	.string	"DataBits"
.LASF2:
	.string	"uint8_t"
.LASF68:
	.string	"Data"
.LASF38:
	.string	"NotificationEndpointDoubleBank"
.LASF91:
	.string	"Proger-usbserial.c"
.LASF77:
	.string	"EVENT_USB_Device_ConfigurationChanged"
.LASF90:
	.string	"GNU C 4.5.1"
.LASF84:
	.string	"CDCInterfaceInfo"
.LASF44:
	.string	"ParityType"
.LASF80:
	.string	"EVENT_CDC_Device_LineEncodingChanged"
.LASF74:
	.string	"DataByte"
.LASF95:
	.string	"main"
.LASF73:
	.string	"Serial_TxByte"
.LASF50:
	.string	"USB_ClassInfo_CDC_Device_t"
.LASF40:
	.string	"HostToDevice"
.global __do_copy_data
.global __do_clear_bss
