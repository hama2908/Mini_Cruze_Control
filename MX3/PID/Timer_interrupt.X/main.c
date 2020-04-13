// Dubs2714-Hous3105
/*-----------------------------------------------------------------------------*/
//LIBRAIRIE
#include <xc.h>
#include <sys/attribs.h>
#include <stdio.h>
#include "config.h"
#include "uart.h"
/*-----------------------------------------------------------------------------*/
//CONSTANTE
#define BAUD_RATE 9600
#define RECEIVE_BUFFER_LEN  cchRxMax
#define TMR_TIME    0.5 // 0.5s for each tick
#define ADD_FLASH 0x100
/*-----------------------------------------------------------------------------*/
// Since the flag is changed within an interrupt, we need the keyword volatile.
static volatile int Flag_1s = 0;

//UNSIGNED CHAR
unsigned char tampon[24];
unsigned char tampon1[24];

//UNSIGNED INT
unsigned int adc;

//INT
int count = 0;
int count2 = 0;
int count3 = 0;
int adresse = ADD_FLASH;
int rac;
int sec = 00;
int min = 00;
int hour = 10;
int adcmin = 1023;
int adcmax = 0;
int adcmoy = 0;

//CHAR
char receive_buffer[RECEIVE_BUFFER_LEN]; 
char s[4];     
char accx[4];
char accy[4];
char accz[4];
char acc[4];
char raclcd[4];
char lcd_heure[10];
char heure[4];
//FLOAT
float rgACLGVals[3]; 
float xmin = 1000;
float ymin = 1000;
float zmin = 1000;
float xmax = -1000;
float ymax = -1000;
float zmax = -1000;
float xmoy = 0;
float ymoy = 0;
float zmoy = 0;
float racinemin;
float racinemax;
float sousracine;
//ASSEMBLEUR S
extern int racine(int a);
/*-----------------------------------------------------------------------------*/
//VOID
void __ISR(_TIMER_5_VECTOR, IPL2AUTO) Timer5ISR(void) 
{  
   Flag_1s = 1;            //indique à la boucle principale qu'on doit traiter
   
   IFS0bits.T5IF = 0;     // clear interrupt flag
}

void initialize_300us_interrupt(void) { 
  T5CONbits.TCKPS = 7;                //    1:256 prescaler value
  T5CONbits.TGATE = 0;                //    not gated input (the default)
  T5CONbits.TCS = 0;                  //    PCBLK input (the default)
  PR5 = (int)(((float)(TMR_TIME * PB_FRQ) / 256) + 0.5);   //set period register, generates one interrupt every 300 us                     
  TMR5 = 0;                           //    initialize count to 0
  IPC5bits.T5IP = 2;                  //    INT step 4: priority
  IPC5bits.T5IS = 0;                  //    subpriority
  IFS0bits.T5IF = 0;                  //    clear interrupt flag
  IEC0bits.T5IE = 1;                  //    enable interrupt
  T5CONbits.ON = 1;                   //    turn on Timer5
} 
/*-----------------------------------------------------------------------------*/
//MAIN
void main() {
    
  
    //INITIALISATION DES PERIPHERIQUES
    LED_Init();
    LCD_Init();
    SWT_Init();
    SSD_Init();
    ADC_Init();
    UART_Init(BAUD_RATE);   // Configure UART with interrupt    
    ACL_Init();
    ACL_SetRange(0);
    SPIFLASH_Init();
    initialize_300us_interrupt();                           
    macro_enable_interrupts();
    //SPIFLASH_EraseAll();
    
 
    // Main loop
    while(1) {         
            
            if(Flag_1s) {
            Flag_1s = 0;        // Reset the flag to capture the next event
            
            if (++count2 >=2){
                count2 = 0;
               if(sec >= 59){
                    sec = 00;
                    if(min >= 59){
                        min = 00;
                        if (hour >= 23){
                            hour = 00;
                        }
                        else{
                          hour++;  
                        }
                    }
                    else{
                        min++;
                    }
                }
                else{
                    sec++;
                }

                tampon[0] = *heure;
                tampon[4] = *accx;
                tampon[8] = *accy;
                tampon[12] = *accz;
                tampon[16] = *s;
                tampon[20] = *raclcd;
                            
           
                SPIFLASH_ProgramPage(adresse, tampon, 24);
                SPIFLASH_Read(adresse, tampon, 24);    
              
                  
                sprintf(tampon,"temps: %02d:%02d           x: %04f           y: %04f           z: %04f           adc: %04d           rac: %04d\n",min,sec,rgACLGVals[0],rgACLGVals[1],rgACLGVals[2],adc,rac );
                UART_PutString(tampon);
                
                if(adc<adcmin){
                adcmin = adc;
                }
                else if(adc>adcmax){
                adcmax = adc;
                }
                
                if(rgACLGVals[0]<xmin){
                xmin = rgACLGVals[0] ;
                }
                else if(rgACLGVals[0]>xmax){
                xmax = rgACLGVals[0];
                }
                
                if(rgACLGVals[1]<ymin){
                ymin = rgACLGVals[1];
                }
                else if(rgACLGVals[1]>ymax){
                ymax = rgACLGVals[1];
                }               
                if(rgACLGVals[2]<zmin){
                zmin = rgACLGVals[2];
                }
                else if(rgACLGVals[2]>zmax){
                zmax = rgACLGVals[2] ;
                }
                
                adcmoy = adcmoy + adc;
                xmoy = xmoy + rgACLGVals[0];
                ymoy = ymoy + rgACLGVals[1];
                zmoy = zmoy + rgACLGVals[2];
                
                adresse += 24;
                
            }
                
            if (++count >= 1) {
                count = 0;  
                LED_ToggleValue(0); // Toggle the led every second FREQUENCE CHANGE SELON LE IF  
                                
              //conversion adc pour la photo resistance et ecrire sur LCD
                adc = ADC_AnalogRead(24);
                  
                //ACL               
                ACL_ReadGValues(rgACLGVals);
                sousracine = (100*rgACLGVals[0]*rgACLGVals[0])+(100*rgACLGVals[1]*rgACLGVals[1])+(100*rgACLGVals[2]*rgACLGVals[2]);
                rac = racine(sousracine);

            }
            
               //SPIFLASH_EraseAll();
                if(++count3 >=32)
                {
                count3 = 0; 
                adcmoy = adcmoy / 16;
                xmoy = xmoy / 16;
                ymoy = ymoy / 16;
                zmoy = zmoy / 16;
                sprintf(tampon1,"\nadcmin: %04d          adcmax: %04d          \nxmin: %04f          xmax: %04f          \nymin: %04f          ymax: %04f          \nzmin: %04f          zmax: %04f          \nadcmoy: %04d          \nxmoy: %04f         \nymoy: %04f         \nzmoy: %04f\n\n",adcmin,adcmax,xmin,xmax,ymin,ymax,zmin,zmax,adcmoy,xmoy,ymoy,zmoy);
                UART_PutString(tampon1);
                adresse = ADD_FLASH;
                adcmin = 1023;
                adcmax = 0;
                xmin = 1000;
                ymin = 1000;
                zmin = 1000;
                xmax = -1000;
                ymax = -1000;
                zmax = -1000;
                adcmoy = 0;
                xmoy = 0;
                ymoy = 0;
                zmoy = 0;
               }             
            }
            //LCD_WriteStringAtPos(lcd_heure,0,0);
                sprintf(acc, "%f", sousracine);
                sprintf(lcd_heure,"%02d:%02d:%02d",hour,min,sec);

            LCD_WriteStringAtPos("2020:02:11",1,0);
            LCD_WriteStringAtPos(lcd_heure,0,0);
        }
    }
