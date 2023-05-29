#line 1 "F:/AAST/Semester 8/Data Acquisition Systems/Project/STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdint.h"





typedef signed char int8_t;
typedef signed int int16_t;
typedef signed long int int32_t;
typedef signed long long int64_t;


typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long int uint32_t;
typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef signed int int_least16_t;
typedef signed long int int_least32_t;
typedef signed long long int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned int uint_least16_t;
typedef unsigned long int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef signed long int int_fast8_t;
typedef signed long int int_fast16_t;
typedef signed long int int_fast32_t;
typedef signed long long int_fast64_t;


typedef unsigned long int uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long long uint_fast64_t;


typedef signed long int intptr_t;
typedef unsigned long int uintptr_t;


typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
#line 3 "F:/AAST/Semester 8/Data Acquisition Systems/Project/STM32F103C8_MCU-Based_MP3_Player_with_Bluetooth_Control.c"
int flag=0;

void play()
{
 int i=0;
 char Play_song1[10]={0x7E,0xFF,0x06,0x0F,0x00,0x01,0x01,0xFE,0xEA,0xEF};
 for(i;i<10;i++) {
 UART2_Write(Play_song1[i]);
 }

}
void resume ()
{ int i=0;
 char resume_song[10] = {0x7E,0xFF,0x06,0x0D,0x00,0x00,0x00,0xFE,0xEE,0xEF};
 for(i;i<10;i++) {
 UART2_Write(resume_song[i]);
 }
}
void pause()
{
 int i=0;
 char pause_song[10] ={0x7E,0xFF,0x06,0x0E,0x00,0x00,0x00,0xFE,0xED,0xEF};
 for(i;i<10;i++) {
 UART2_Write(pause_song[i]);
 }

}
void next()
{
 int i=0;
 char next_song[10] ={0x7E,0xFF,0x06,0x01,0x00,0x00,0x00,0xFE,0xFA,0xEF};
 for(i;i<10;i++) {
 UART2_Write(next_song[i]);
 }

}
void previous()
{
 int i=0;
 char previous_song[10] ={0x7E,0xFF,0x06,0x02,0x00,0x00,0x00,0xFE,0xF9,0xEF};
 for(i;i<10;i++) {
 UART2_Write(previous_song[i]);
 }

}
void volume_up()
{
 int i=0;
 char volume_up_song[10] ={0x7E,0xFF,0x06,0x04,0x00,0x00,0x00,0xFE,0xF7,0xEF};
 for(i;i<10;i++) {
 UART2_Write(volume_up_song[i]);
 }

}
void volume_down()
{
 int i=0;
 char volume_down_song[10] ={0x7E,0xFF,0x06,0x05,0x00,0x00,0x00,0xFE,0xF6,0xEF};
 for(i;i<10;i++) {
 UART2_Write(volume_down_song[i]);
 }

}

void main() {
 unsigned int bluetoothRecievedByte;
 char change_mode[10]={0x7E,0xFF,0x06,0x09,0x00,0x00,0x02,0xFE,0xF0,0xEF};
 int i=0;


 GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_0);


 GPIO_Config(&GPIOA_BASE, _GPIO_PINMASK_9, _GPIO_CFG_DIGITAL_OUTPUT | _GPIO_CFG_MODE_ALT_FUNCTION);


 GPIO_Config(&GPIOA_BASE, _GPIO_PINMASK_10, _GPIO_CFG_DIGITAL_INPUT | _GPIO_CFG_MODE_ALT_FUNCTION);


 GPIO_Config(&GPIOA_BASE, _GPIO_PINMASK_2, _GPIO_CFG_DIGITAL_OUTPUT | _GPIO_CFG_MODE_ALT_FUNCTION);


 GPIO_Config(&GPIOA_BASE, _GPIO_PINMASK_3, _GPIO_CFG_DIGITAL_INPUT | _GPIO_CFG_MODE_ALT_FUNCTION);


 UART1_Init(9600);


 UART2_Init(9600);

 UART2_Write("");
 Delay_100ms();
 for(i;i<10;i++) {
 UART2_Write(change_mode[i]);
 }
 Delay_ms(1000);
 play();

 while(1)
 {

 if(UART1_DATA_Ready() == 1)
 {
 bluetoothRecievedByte = UART1_Read();


 if(bluetoothRecievedByte == 0x41)
 {

 Delay_ms(2000);

 GPIOB_ODR.B0 = !GPIOB_ODR.B0;

 if (flag==0){
 resume();
 }

 else if(flag==1)
 {
 pause();
 }
 flag^=1;

 Delay_100ms();
 }


 else if(bluetoothRecievedByte == 0x42)
 {
 play();
 }


 else if(bluetoothRecievedByte == 0x43)
 {

 }


 else if(bluetoothRecievedByte == 0x44)
 {

 }


 else if(bluetoothRecievedByte == 0x45)
 {
 volume_up();
 }


 else if(bluetoothRecievedByte == 0x46)
 {
 volume_down();
 }


 else if(bluetoothRecievedByte == 0x47)
 {
 next();
 }


 else if(bluetoothRecievedByte == 0x48)
 {
 previous();
 }
 }
 }
}
