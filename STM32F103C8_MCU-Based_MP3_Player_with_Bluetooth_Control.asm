_play:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,5 :: 		void play()
SUB	SP, SP, #16
STR	LR, [SP, #0]
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,7 :: 		int i=0;
; i start address is: 16 (R4)
MOVW	R4, #0
SXTH	R4, R4
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,8 :: 		char Play_song1[10]={0x7E,0xFF,0x06,0x0F,0x00,0x01,0x01,0xFE,0xEA,0xEF};
ADD	R11, SP, #4
ADD	R10, R11, #10
MOVW	R12, #lo_addr(?ICSplay_Play_song1_L0+0)
MOVT	R12, #hi_addr(?ICSplay_Play_song1_L0+0)
BL	___CC2DW+0
; i end address is: 16 (R4)
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,9 :: 		for(i;i<10;i++) {
L_play0:
; i start address is: 16 (R4)
CMP	R4, #10
IT	GE
BGE	L_play1
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,10 :: 		UART2_Write(Play_song1[i]);
ADD	R0, SP, #4
ADDS	R0, R0, R4
LDRB	R0, [R0, #0]
BL	_UART2_Write+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,9 :: 		for(i;i<10;i++) {
ADDS	R4, R4, #1
SXTH	R4, R4
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,11 :: 		}
; i end address is: 16 (R4)
IT	AL
BAL	L_play0
L_play1:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,13 :: 		}
L_end_play:
LDR	LR, [SP, #0]
ADD	SP, SP, #16
BX	LR
; end of _play
_resume:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,14 :: 		void resume ()
SUB	SP, SP, #16
STR	LR, [SP, #0]
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,15 :: 		{     int i=0;
; i start address is: 16 (R4)
MOVW	R4, #0
SXTH	R4, R4
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,16 :: 		char resume_song[10] = {0x7E,0xFF,0x06,0x0D,0x00,0x00,0x00,0xFE,0xEE,0xEF};
ADD	R11, SP, #4
ADD	R10, R11, #10
MOVW	R12, #lo_addr(?ICSresume_resume_song_L0+0)
MOVT	R12, #hi_addr(?ICSresume_resume_song_L0+0)
BL	___CC2DW+0
; i end address is: 16 (R4)
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,17 :: 		for(i;i<10;i++) {
L_resume3:
; i start address is: 16 (R4)
CMP	R4, #10
IT	GE
BGE	L_resume4
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,18 :: 		UART2_Write(resume_song[i]);
ADD	R0, SP, #4
ADDS	R0, R0, R4
LDRB	R0, [R0, #0]
BL	_UART2_Write+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,17 :: 		for(i;i<10;i++) {
ADDS	R4, R4, #1
SXTH	R4, R4
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,19 :: 		}
; i end address is: 16 (R4)
IT	AL
BAL	L_resume3
L_resume4:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,20 :: 		}
L_end_resume:
LDR	LR, [SP, #0]
ADD	SP, SP, #16
BX	LR
; end of _resume
_pause:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,21 :: 		void pause()
SUB	SP, SP, #16
STR	LR, [SP, #0]
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,23 :: 		int i=0;
; i start address is: 16 (R4)
MOVW	R4, #0
SXTH	R4, R4
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,24 :: 		char pause_song[10]     ={0x7E,0xFF,0x06,0x0E,0x00,0x00,0x00,0xFE,0xED,0xEF};
ADD	R11, SP, #4
ADD	R10, R11, #10
MOVW	R12, #lo_addr(?ICSpause_pause_song_L0+0)
MOVT	R12, #hi_addr(?ICSpause_pause_song_L0+0)
BL	___CC2DW+0
; i end address is: 16 (R4)
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,25 :: 		for(i;i<10;i++) {
L_pause6:
; i start address is: 16 (R4)
CMP	R4, #10
IT	GE
BGE	L_pause7
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,26 :: 		UART2_Write(pause_song[i]);
ADD	R0, SP, #4
ADDS	R0, R0, R4
LDRB	R0, [R0, #0]
BL	_UART2_Write+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,25 :: 		for(i;i<10;i++) {
ADDS	R4, R4, #1
SXTH	R4, R4
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,27 :: 		}
; i end address is: 16 (R4)
IT	AL
BAL	L_pause6
L_pause7:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,29 :: 		}
L_end_pause:
LDR	LR, [SP, #0]
ADD	SP, SP, #16
BX	LR
; end of _pause
_next:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,30 :: 		void next()
SUB	SP, SP, #16
STR	LR, [SP, #0]
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,32 :: 		int i=0;
; i start address is: 16 (R4)
MOVW	R4, #0
SXTH	R4, R4
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,33 :: 		char next_song[10]     ={0x7E,0xFF,0x06,0x01,0x00,0x00,0x00,0xFE,0xFA,0xEF};
ADD	R11, SP, #4
ADD	R10, R11, #10
MOVW	R12, #lo_addr(?ICSnext_next_song_L0+0)
MOVT	R12, #hi_addr(?ICSnext_next_song_L0+0)
BL	___CC2DW+0
; i end address is: 16 (R4)
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,34 :: 		for(i;i<10;i++) {
L_next9:
; i start address is: 16 (R4)
CMP	R4, #10
IT	GE
BGE	L_next10
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,35 :: 		UART2_Write(next_song[i]);
ADD	R0, SP, #4
ADDS	R0, R0, R4
LDRB	R0, [R0, #0]
BL	_UART2_Write+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,34 :: 		for(i;i<10;i++) {
ADDS	R4, R4, #1
SXTH	R4, R4
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,36 :: 		}
; i end address is: 16 (R4)
IT	AL
BAL	L_next9
L_next10:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,38 :: 		}
L_end_next:
LDR	LR, [SP, #0]
ADD	SP, SP, #16
BX	LR
; end of _next
_previous:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,39 :: 		void previous()
SUB	SP, SP, #16
STR	LR, [SP, #0]
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,41 :: 		int i=0;
; i start address is: 16 (R4)
MOVW	R4, #0
SXTH	R4, R4
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,42 :: 		char previous_song[10]     ={0x7E,0xFF,0x06,0x02,0x00,0x00,0x00,0xFE,0xF9,0xEF};
ADD	R11, SP, #4
ADD	R10, R11, #10
MOVW	R12, #lo_addr(?ICSprevious_previous_song_L0+0)
MOVT	R12, #hi_addr(?ICSprevious_previous_song_L0+0)
BL	___CC2DW+0
; i end address is: 16 (R4)
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,43 :: 		for(i;i<10;i++) {
L_previous12:
; i start address is: 16 (R4)
CMP	R4, #10
IT	GE
BGE	L_previous13
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,44 :: 		UART2_Write(previous_song[i]);
ADD	R0, SP, #4
ADDS	R0, R0, R4
LDRB	R0, [R0, #0]
BL	_UART2_Write+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,43 :: 		for(i;i<10;i++) {
ADDS	R4, R4, #1
SXTH	R4, R4
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,45 :: 		}
; i end address is: 16 (R4)
IT	AL
BAL	L_previous12
L_previous13:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,47 :: 		}
L_end_previous:
LDR	LR, [SP, #0]
ADD	SP, SP, #16
BX	LR
; end of _previous
_volume_up:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,48 :: 		void volume_up()
SUB	SP, SP, #16
STR	LR, [SP, #0]
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,50 :: 		int  i=0;
; i start address is: 16 (R4)
MOVW	R4, #0
SXTH	R4, R4
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,51 :: 		char volume_up_song[10]     ={0x7E,0xFF,0x06,0x04,0x00,0x00,0x00,0xFE,0xF7,0xEF};
ADD	R11, SP, #4
ADD	R10, R11, #10
MOVW	R12, #lo_addr(?ICSvolume_up_volume_up_song_L0+0)
MOVT	R12, #hi_addr(?ICSvolume_up_volume_up_song_L0+0)
BL	___CC2DW+0
; i end address is: 16 (R4)
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,52 :: 		for(i;i<10;i++) {
L_volume_up15:
; i start address is: 16 (R4)
CMP	R4, #10
IT	GE
BGE	L_volume_up16
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,53 :: 		UART2_Write(volume_up_song[i]);
ADD	R0, SP, #4
ADDS	R0, R0, R4
LDRB	R0, [R0, #0]
BL	_UART2_Write+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,52 :: 		for(i;i<10;i++) {
ADDS	R4, R4, #1
SXTH	R4, R4
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,54 :: 		}
; i end address is: 16 (R4)
IT	AL
BAL	L_volume_up15
L_volume_up16:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,56 :: 		}
L_end_volume_up:
LDR	LR, [SP, #0]
ADD	SP, SP, #16
BX	LR
; end of _volume_up
_volume_down:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,57 :: 		void volume_down()
SUB	SP, SP, #16
STR	LR, [SP, #0]
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,59 :: 		int  i=0;
; i start address is: 16 (R4)
MOVW	R4, #0
SXTH	R4, R4
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,60 :: 		char volume_down_song[10]     ={0x7E,0xFF,0x06,0x05,0x00,0x00,0x00,0xFE,0xF6,0xEF};
ADD	R11, SP, #4
ADD	R10, R11, #10
MOVW	R12, #lo_addr(?ICSvolume_down_volume_down_song_L0+0)
MOVT	R12, #hi_addr(?ICSvolume_down_volume_down_song_L0+0)
BL	___CC2DW+0
; i end address is: 16 (R4)
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,61 :: 		for(i;i<10;i++) {
L_volume_down18:
; i start address is: 16 (R4)
CMP	R4, #10
IT	GE
BGE	L_volume_down19
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,62 :: 		UART2_Write(volume_down_song[i]);
ADD	R0, SP, #4
ADDS	R0, R0, R4
LDRB	R0, [R0, #0]
BL	_UART2_Write+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,61 :: 		for(i;i<10;i++) {
ADDS	R4, R4, #1
SXTH	R4, R4
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,63 :: 		}
; i end address is: 16 (R4)
IT	AL
BAL	L_volume_down18
L_volume_down19:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,65 :: 		}
L_end_volume_down:
LDR	LR, [SP, #0]
ADD	SP, SP, #16
BX	LR
; end of _volume_down
_main:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,67 :: 		void main() {
SUB	SP, SP, #16
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,69 :: 		char change_mode[10]={0x7E,0xFF,0x06,0x09,0x00,0x00,0x02,0xFE,0xF0,0xEF};
ADD	R11, SP, #2
ADD	R10, R11, #12
MOVW	R12, #lo_addr(?ICSmain_change_mode_L0+0)
MOVT	R12, #hi_addr(?ICSmain_change_mode_L0+0)
BL	___CC2DW+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,70 :: 		int i=0;
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,73 :: 		GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_0);
MOVW	R1, #1
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,76 :: 		GPIO_Config(&GPIOA_BASE, _GPIO_PINMASK_9, _GPIO_CFG_DIGITAL_OUTPUT | _GPIO_CFG_MODE_ALT_FUNCTION);
MOVW	R2, #28
MOVT	R2, #8
MOVW	R1, #512
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Config+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,79 :: 		GPIO_Config(&GPIOA_BASE, _GPIO_PINMASK_10, _GPIO_CFG_DIGITAL_INPUT | _GPIO_CFG_MODE_ALT_FUNCTION);
MOVS	R2, #74
MOVW	R1, #1024
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Config+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,82 :: 		GPIO_Config(&GPIOA_BASE, _GPIO_PINMASK_2, _GPIO_CFG_DIGITAL_OUTPUT | _GPIO_CFG_MODE_ALT_FUNCTION);
MOVW	R2, #28
MOVT	R2, #8
MOVW	R1, #4
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Config+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,85 :: 		GPIO_Config(&GPIOA_BASE, _GPIO_PINMASK_3, _GPIO_CFG_DIGITAL_INPUT | _GPIO_CFG_MODE_ALT_FUNCTION);
MOVS	R2, #74
MOVW	R1, #8
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Config+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,88 :: 		UART1_Init(9600);
MOVW	R0, #9600
BL	_UART1_Init+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,91 :: 		UART2_Init(9600);
MOVW	R0, #9600
BL	_UART2_Init+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,93 :: 		UART2_Write("");
MOVW	R0, #lo_addr(?lstr_1_STM32F103C8_MCU_45Based_MP3_Player_with_Bluetooth_Control+0)
BL	_UART2_Write+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,94 :: 		Delay_100ms();
BL	_Delay_100ms+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,95 :: 		for(i;i<10;i++) {
L_main21:
LDRSH	R0, [SP, #12]
CMP	R0, #10
IT	GE
BGE	L_main22
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,96 :: 		UART2_Write(change_mode[i]);
ADD	R1, SP, #2
LDRSH	R0, [SP, #12]
ADDS	R0, R1, R0
LDRB	R0, [R0, #0]
BL	_UART2_Write+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,95 :: 		for(i;i<10;i++) {
LDRSH	R0, [SP, #12]
ADDS	R0, R0, #1
STRH	R0, [SP, #12]
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,97 :: 		}
IT	AL
BAL	L_main21
L_main22:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,98 :: 		Delay_ms(1000);
MOVW	R7, #45225
MOVT	R7, #40
NOP
NOP
L_main24:
SUBS	R7, R7, #1
BNE	L_main24
NOP
NOP
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,99 :: 		play();
BL	_play+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,101 :: 		while(1)
L_main26:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,104 :: 		if(UART1_DATA_Ready() == 1)
BL	_UART1_Data_Ready+0
CMP	R0, #1
IT	NE
BNE	L_main28
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,106 :: 		bluetoothRecievedByte = UART1_Read();
BL	_UART1_Read+0
STRH	R0, [SP, #0]
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,109 :: 		if(bluetoothRecievedByte == 0x41)
CMP	R0, #65
IT	NE
BNE	L_main29
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,112 :: 		Delay_ms(2000);
MOVW	R7, #24915
MOVT	R7, #81
NOP
NOP
L_main30:
SUBS	R7, R7, #1
BNE	L_main30
NOP
NOP
NOP
NOP
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,114 :: 		GPIOB_ODR.B0 = !GPIOB_ODR.B0;
MOVW	R1, #lo_addr(GPIOB_ODR+0)
MOVT	R1, #hi_addr(GPIOB_ODR+0)
LDR	R0, [R1, #0]
EOR	R1, R0, #1
MOVW	R0, #lo_addr(GPIOB_ODR+0)
MOVT	R0, #hi_addr(GPIOB_ODR+0)
STR	R1, [R0, #0]
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,116 :: 		if (flag==0){
MOVW	R0, #lo_addr(_flag+0)
MOVT	R0, #hi_addr(_flag+0)
LDRSH	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_main32
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,117 :: 		resume();
BL	_resume+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,118 :: 		}
IT	AL
BAL	L_main33
L_main32:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,120 :: 		else if(flag==1)
MOVW	R0, #lo_addr(_flag+0)
MOVT	R0, #hi_addr(_flag+0)
LDRSH	R0, [R0, #0]
CMP	R0, #1
IT	NE
BNE	L_main34
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,122 :: 		pause();
BL	_pause+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,123 :: 		}
L_main34:
L_main33:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,124 :: 		flag^=1;
MOVW	R1, #lo_addr(_flag+0)
MOVT	R1, #hi_addr(_flag+0)
LDRSH	R0, [R1, #0]
EOR	R0, R0, #1
STRH	R0, [R1, #0]
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,126 :: 		Delay_100ms();
BL	_Delay_100ms+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,127 :: 		}
IT	AL
BAL	L_main35
L_main29:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,130 :: 		else if(bluetoothRecievedByte == 0x42)
LDRH	R0, [SP, #0]
CMP	R0, #66
IT	NE
BNE	L_main36
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,132 :: 		play();
BL	_play+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,133 :: 		}
IT	AL
BAL	L_main37
L_main36:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,136 :: 		else if(bluetoothRecievedByte == 0x43)
LDRH	R0, [SP, #0]
CMP	R0, #67
IT	NE
BNE	L_main38
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,139 :: 		}
IT	AL
BAL	L_main39
L_main38:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,142 :: 		else if(bluetoothRecievedByte == 0x44)
LDRH	R0, [SP, #0]
CMP	R0, #68
IT	NE
BNE	L_main40
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,145 :: 		}
IT	AL
BAL	L_main41
L_main40:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,148 :: 		else if(bluetoothRecievedByte == 0x45)
LDRH	R0, [SP, #0]
CMP	R0, #69
IT	NE
BNE	L_main42
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,150 :: 		volume_up();
BL	_volume_up+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,151 :: 		}
IT	AL
BAL	L_main43
L_main42:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,154 :: 		else if(bluetoothRecievedByte == 0x46)
LDRH	R0, [SP, #0]
CMP	R0, #70
IT	NE
BNE	L_main44
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,156 :: 		volume_down();
BL	_volume_down+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,157 :: 		}
IT	AL
BAL	L_main45
L_main44:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,160 :: 		else if(bluetoothRecievedByte == 0x47)
LDRH	R0, [SP, #0]
CMP	R0, #71
IT	NE
BNE	L_main46
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,162 :: 		next();
BL	_next+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,163 :: 		}
IT	AL
BAL	L_main47
L_main46:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,166 :: 		else if(bluetoothRecievedByte == 0x48)
LDRH	R0, [SP, #0]
CMP	R0, #72
IT	NE
BNE	L_main48
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,168 :: 		previous();
BL	_previous+0
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,169 :: 		}
L_main48:
L_main47:
L_main45:
L_main43:
L_main41:
L_main39:
L_main37:
L_main35:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,170 :: 		}
L_main28:
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,171 :: 		}
IT	AL
BAL	L_main26
;STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c,172 :: 		}
L_end_main:
L__main_end_loop:
B	L__main_end_loop
; end of _main
