/**
 * Author:    Vincent Roberge et Antoine Hamel 
 * Created:   2020-02-09
 * App3 
 * 
 **/

#include <xc.h>
#include <sys/attribs.h>
#include <stdio.h>
#include "config.h"
#include "lcd.h"
#include "acl.h"
#include "i2c.h"
#include "adc.h"
#include "spiflash.h"
#include "uart.h"


// Since the flag is changed within an interrupt, we need the keyword volatile.
static volatile int Flag_1s = 0;



void __ISR(_TIMER_5_VECTOR, IPL2AUTO) Timer5ISR(void) 
{  
   Flag_1s = 1;            //indique à la boucle principale qu'on doit traiter
   
   IFS0bits.T5IF = 0;     // clear interrupt flag
}

#define TMR_TIME    0.0003 // 300 us for each tick

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

void main() {
    float rgACLGVals[3];    // valeur de l'accelerometre
    float high = 0.0;       // highest value
    
    char buff_arrayX[5];    // pour conversion en char X
    char buff_arrayY[5];    // Y
    char buff_arrayZ[5];    // Z
    char buff_arrayA[5];    // All 
    char buff_arrayH[2];    // Heure 
    char buff_arrayM[2];    // Minute
    char buff_arrayS[2];    // Seconde 
    char buff_arrayV[2];    // vide 1
    char buff_arrayD[2];    // day
    char buff_arrayMo[2];    // Month
    char buff_arrayY2[2];    // year 
    char buff_arrayV2[2];    // vide 1
    
    char buff_arrayT[4];    // Light

    unsigned int light = 0; // valeur de la photoresistance
    
    int count2 = 0;
    
    int puissance = 0;      //puissance de l'accel x, y et z
    
    //char sd_bytes[31];
    
    char sd_bytesX[5];
    char sd_bytesY[5];
    char sd_bytesZ[5];
    char sd_bytesA[5];
    char sd_bytesT[5];
    char sd_hour[2];
    char sd_min[2];
    char sd_sec[2];
    char sd_vide[2];
    char sd_day[2];
    char sd_month[2];
    char sd_year[2];
    char sd_vide2[2];
    
    //Heure
    short seconde = 00;
    short minute = 12;
    short heure = 16;
    
    char sec [2];
    char min [2];
    char hour [2];  
    
    //Date
    short jour = 10;
    short mois = 02;
    short annee = 20;
    
    char day [2];
    char month [2];
    char year [2];
    
    char puissance_totale [5]; //char pour puissance totale 
    
    int racine = 0;
    
    int adresse_base = 0x00000000; //adresse de base pour incrementer par la suite 
    
    int compte_16 = 0; 
    
    int x, y, z = 0;
    
    int i = 0; 
    
    extern int racine_carree(int puissanceG);
    
    LED_Init();
    LCD_Init();
    ACL_Init();
    BTN_Init();
    ADC_Init();
    SPIFLASH_Init();
    UART_Init(9600);
    
    initialize_300us_interrupt();
    int count = 0;
    
    macro_enable_interrupts();
     
    // Main loop
    while(1) {
        if(Flag_1s) {
            Flag_1s = 0;        // Reset the flag to capture the next event
            if (++count >= 1502) {   //1000 origine
                count = 0;
                if (count2 % 2 == 0){
                    LED_ToggleValue(0); // Toggle the led every second


                    DelayAprox10Us(1000);

                    ACL_SetRange(0);                        //set full scale to 2g
                    ACL_ReadGValues(rgACLGVals);            //lis valeurs du l'accel

                    light = ADC_AnalogRead(24);             //set light to analog read pin 24 of PMODB
                    // sprintf(buff_array, "%d", light);       //conversion float to char
                    // LCD_WriteStringAtPos("light is",0,0);   //
                    // LCD_WriteStringAtPos(buff_array,1,0);   //affiche la valeur de lumiere 

//                    SPIFLASH_ConfigureSPI(1000000, 0, 1);
//                    unsigned char bWrBytes[2], bRdBytes[2];
//                    SPIFLASH_TransferBytes(2, bRdBytes, bWrBytes);
                    
                    
                    
                    /////////////////////////////time 
                    seconde++;
                    if (seconde == 60)
                    {
                        minute ++;
                        seconde = 0;
                    }

                    if (minute == 60)
                    {
                        heure++;
                        minute = 0;
                    }

                    if (heure == 24)
                    {
                        heure = 0;
                    }
                    ////////////////////////////////////
                    
                    sprintf(sec, "%02hd", seconde);       //conversion float to char pour heure 
                    sprintf(min, "%02hd", minute);
                    sprintf(hour,"%02hd", heure);
                    
                    sprintf(day, "%02hd", jour);       //conversion float to char pour date
                    sprintf(month, "%02hd", mois);
                    sprintf(year,"%02hd", annee);
                    
                    
                    
                    
                    LCD_WriteStringAtPos(day,0,0); //affichage date 
                    LCD_WriteStringAtPos(".",0,2);
                    LCD_WriteStringAtPos(month,0,3);
                    LCD_WriteStringAtPos(".",0,5);
                    LCD_WriteStringAtPos(year,0,6);
                    
                    LCD_WriteStringAtPos(hour,1,0); //affichage heure
                    LCD_WriteStringAtPos(":",1,2);
                    LCD_WriteStringAtPos(min,1,3);
                    LCD_WriteStringAtPos(":",1,5);
                    LCD_WriteStringAtPos(sec,1,6);

                    //conversion en donnees lisible
                    sprintf(buff_arrayX, "%.2f", rgACLGVals[0]);
                    sprintf(buff_arrayY, "%.2f", rgACLGVals[1]);
                    sprintf(buff_arrayZ, "%.2f", rgACLGVals[2]);
                    sprintf(buff_arrayT, "%d", light);
                  //sprintf(buff_arrayH, "%02hd", heure);
                    
                    x = rgACLGVals[0]*rgACLGVals[0];
                    y = rgACLGVals[1]*rgACLGVals[1];
                    z = rgACLGVals[2]*rgACLGVals[2];
                            
                    puissance = racine_carree(x+y+z);
                    
                    sprintf(puissance_totale, "%.4d", puissance); 
                    
                    LCD_WriteStringAtPos(puissance_totale,1,9);
                    //LCD_WriteStringAtPos(buff_arrayY,0,9); 

                    //programmation et assignation de la flash
                    SPIFLASH_Erase4k(0);
                    
                                        
                    //program in spi flash 
                    SPIFLASH_ProgramPage(adresse_base + 0x00000000,buff_arrayX,5);
                    SPIFLASH_ProgramPage(adresse_base + 0x00000005,buff_arrayY,5);
                    SPIFLASH_ProgramPage(adresse_base + 0x0000000A,buff_arrayZ,5);
                  //SPIFLASH_ProgramPage(0x0000000F,buff_arrayA,5); //puissance tot
                    SPIFLASH_ProgramPage(adresse_base + 0x0000000F,buff_arrayT,5); //photo res
                    //heure
                    SPIFLASH_ProgramPage(adresse_base + 0x00000015,hour,2); //heure
                    SPIFLASH_ProgramPage(adresse_base + 0x00000017,min,2); //minute
                    SPIFLASH_ProgramPage(adresse_base + 0x00000019,sec,2); //seconde 
                    SPIFLASH_ProgramPage(adresse_base + 0x0000001B,"00",2); //heure
                    //date
                    SPIFLASH_ProgramPage(adresse_base + 0x0000001E,day,2); 
                    SPIFLASH_ProgramPage(adresse_base + 0x00000020,month,2); 
                    SPIFLASH_ProgramPage(adresse_base + 0x00000022,year,2);  
                    SPIFLASH_ProgramPage(adresse_base + 0x00000024,"00",2); 
                    
                    
                    SPIFLASH_WriteDisable();
                    
                    //read in spi flash 
//                    SPIFLASH_Read(0x00000000,sd_bytesX,5);
//                    SPIFLASH_Read(0x00000005,sd_bytesY,5);
//                    SPIFLASH_Read(0x0000000A,sd_bytesZ,5);
//                  //SPIFLASH_Read(0x0000000F,sd_bytesA,5);
//                    SPIFLASH_Read(0x0000000F,sd_bytesT,5);
//                    
//                    SPIFLASH_Read(0x00000015,sd_hour,8);
//                    SPIFLASH_Read(0x00000017,sd_min,2);
//                    SPIFLASH_Read(0x00000019,sd_sec,2);
//                    SPIFLASH_Read(0x0000001B,sd_vide,2);
//                    
//                    SPIFLASH_Read(0x0000001E,sd_day,8);
//                    SPIFLASH_Read(0x00000100,sd_month,2);
//                    SPIFLASH_Read(0x00000102,sd_year,2);
//                    SPIFLASH_Read(0x00000104,sd_vide2,2);
                    
                            
                    //conversion en string 
//                    sprintf(buff_arrayX, "%s", sd_bytesX );  
//                    sprintf(buff_arrayY, "%s", sd_bytesY );
//                    sprintf(buff_arrayZ, "%s", sd_bytesZ );
//                  //sprintf(buff_arrayA, "%s", sd_bytesA );
//                    sprintf(buff_arrayT, "%s", sd_bytesT);
//                    sprintf(buff_arrayH, "%.2s", sd_hour);
//                    sprintf(buff_arrayM, "%.2s", sd_min);
//                    sprintf(buff_arrayS, "%.2s", sd_sec);
//                    sprintf(buff_arrayV, "%.2s", sd_vide);
//                    sprintf(buff_arrayD, "%.2s", sd_day);
//                    sprintf(buff_arrayMo, "%.2s", sd_month);
//                    sprintf(buff_arrayY2, "%.2s", sd_year);
//                    sprintf(buff_arrayV2, "%.2s", sd_vide2);
                    
                    //UART
//                    UART_PutString(buff_arrayX);
//                    UART_PutString("\n");
//                    UART_PutString(buff_arrayY);
//                    UART_PutString("\n");
//                    UART_PutString(buff_arrayZ);
//                    UART_PutString("\n");
//                    //UART_PutString(buff_arrayA);
//                    //UART_PutString("\n");
//                    UART_PutString(buff_arrayT);
//                    UART_PutString("\n");
//                    UART_PutString(buff_arrayH);
//                    UART_PutString(buff_arrayM);
//                    UART_PutString(buff_arrayS);
//                    UART_PutString(buff_arrayV);
//                    UART_PutString("\n");
//                    UART_PutString(buff_arrayD);
//                    UART_PutString(buff_arrayMo);
//                    UART_PutString(buff_arrayY2);
//                    UART_PutString(buff_arrayV2);
//                    UART_PutString("\n");
                    
                    adresse_base = adresse_base + 0x26;
                    
                    if (compte_16 == 16)
                    {
                        adresse_base = 0;
                        for ( i = 0; i < 16; i++)
                        {
                            
                            SPIFLASH_Read(adresse_base + 0x00000000,sd_bytesX,5);
                            sprintf(buff_arrayX, "%s", sd_bytesX);
                            UART_PutString(buff_arrayX);
                            UART_PutString("\n");
                            adresse_base = adresse_base + 0x26; 
                            
                        }
                        adresse_base = 0;       
                        compte_16 = 0;
                        UART_PutString("-------new stample--------");
                        SPIFLASH_Erase4k(0);
                    }
                    compte_16++;
                }
                count2++;
            }
        }
    }
}