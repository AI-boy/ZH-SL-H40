 #ifndef _USERDEFINE_H
 #define _USERDEFINE_H
 
 
 
 


//------------------------------------------------------------------------------------------------包含工程头文件
 	#include"delay.h"
	#include"interrupt.h"
	#include"led.h"
	#include"timer.h"
	#include"uart.h"
	#include"adc.h"
	#include"pwm.h"
	#include"task.h"
	#include "PID.h"
	#include"Modbus.h"
	#include"ird_remote.h"
	#include"key.h"
//-------------------------------------------------------------------------------------------------


//-------------------------------------------------------------------------------------------------

#define BIT0  0
#define BIT1  1
#define BIT2  2
#define BIT3  3
#define BIT4  4
#define BIT5  5
#define BIT6  6
#define BIT7  7



#define MAC_ADDR   0x55         //红外遥控设备地址


#define _XTAL_FREQ	32000000





#define PERSON_CHECK_TRIS        TRISCbits.TRISC1

#define PERSON_CHECK1			 RC1


#define LOAD_OUT_TRIS			 TRISCbits.TRISC3

#define LOAD_OUT_ENABLE			(LATCbits.LATC3 = 0x01) 		// LED负载输出

#define LOAD_OUT_DISABLE		(LATCbits.LATC3 = 0x00) 		// LED负载关断




//#define POWER_TRIS         TRISAbits.TRISA6
//#define POWER_ON		  (LATAbits.LATA6 = 0x01)
//#define POWER_OFF		  (LATAbits.LATA6 = 0x00)
//

//#define POWER_TRIS         TRISCbits.TRISC0
//#define POWER_ON		  (LATCbits.LATC0 = 0x01)
//#define POWER_OFF		  (LATCbits.LATC0 = 0x00)

#define CON_BT_TRIS        TRISCbits.TRISC0
#define CON_BT_ON		  (LATCbits.LATC0 = 0x01)
#define CON_BT_OFF		  (LATCbits.LATC0 = 0x00)

#define CON_24_TRIS        TRISAbits.TRISA7
#define CON_24_ON		  (LATAbits.LATA7 = 0x01)
#define CON_24_OFF		  (LATAbits.LATA7 = 0x00)

#define CON_AC_TRIS        TRISAbits.TRISA6
#define CON_AC_ON		  (LATAbits.LATA6 = 0x01)
#define CON_AC_OFF		  (LATAbits.LATA6 = 0x00)


extern unsigned char sys_power_ch;


#endif