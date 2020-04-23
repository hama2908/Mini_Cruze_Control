/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    main.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It 
    implements the logic of the application's state machine and it may call 
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
// DOM-IGNORE-END


// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************

#include "main.h"
#include "global_event.h"
#include "bsp.h"
#include "system_config.h"
#include "system/common/sys_module.h"   // SYS function prototypes
#include "driver/spi/src/dynamic/drv_spi_internal.h"
#include "UDP_app.h"
#include "led.h"
#include "ssd.h"
#include "accel.h"
#include "lcd.h"
#include "app_commands.h"
#include "string.h"
#include <stdio.h>
#include "adc.h"
#include "mot.h"
#include "control.h"
#include "PID.h"
//#include "control.h"
// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the TCPIP_Initialize function.
    
    Application strings and buffers are be defined outside this structure.
 */

MAIN_DATA mainData;
//static enum 
//{
//    USART_RW_INIT,
//    USART_RW_WORKING,
//    USART_RW_DONE,
//} usartRWState;


// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
 */

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


        static unsigned long int counter=0;
//        static unsigned long int timer=0;
        static unsigned long int counter_buffer=0;
        static unsigned long time = 0;
//      static bool sw0_old; 

        int commande_somme_distance;
        int commande_somme_vitesse;
        int commande_distance_filtre;
        int commande_vitesse_filtre;
        
        int commande_distance_buffer[SIZE_BUFFER];
        int commande_vitesse_buffer[SIZE_BUFFER];
        int i = 0;
        
short distances [9]= {10, 15, 20, 25, 30, 35, 35, 35, 35};
short vitesses [11]= {0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100};
        
/* Application's LED Task Function */
//static void LedTask(void) {
//    counter++;
//    
//    if(counter == 1000){
//        LED_ToggleValue(1);
//        counter = 0;
//    }  
//}

void Buffer_Init()
{
    for(i=0; i<SIZE_BUFFER; i++)
    {
        commande_distance_buffer[i] = 0;
        commande_vitesse_buffer[i] = 0;  
    }  
}



void ManageCom()
{
    if(counter++ >= 5000)
    {
        strcpy(UDP_Send_Buffer, "Bonjour S4\n\r");
        UDP_bytes_to_send = strlen(UDP_Send_Buffer);
        UDP_Send_Packet = true;
        counter = 0;
        time =+ 1 ;
    }
}
//time a horloge (a ameliorer)
unsigned long millis()
{
    
    return time;
}

void Moyenne_Mobile()
{
    for(i=0; i<SIZE_BUFFER; i++)
    {
        commande_somme_distance = commande_somme_distance +  commande_distance_buffer[i];
        commande_somme_vitesse = commande_somme_vitesse +  commande_vitesse_buffer[i];
    }
        commande_distance_filtre = commande_somme_distance >> SIZE_BUFFER_PUISSANCE;
        commande_vitesse_filtre = commande_somme_vitesse >> SIZE_BUFFER_PUISSANCE;
       SYS_CONSOLE_PRINT("Distance = %d Vitesse = %d\n\r",  commande_distance_filtre, commande_vitesse_filtre);   
       
       commande_somme_distance = 0;
       commande_somme_vitesse = 0;
}



void control_tasks(PIDController *controller, int d, int v)
{
    static int old_d = 0;
    static int old_v = 0;
    
    if(v != old_v) {
        setOutputBounds(controller, 0, vitesses[v]);
        old_v = v;
    }
    if(d != old_d) {
       controller->target = d;
        old_d = d;
    }
    
    
    tick(controller);
}

void Commande_reception()
{
          if(UDP_Receive_Packet)
        {
          commande_distance_buffer[counter_buffer] = ((signed int)UDP_Receive_Buffer[0])-48;
          commande_vitesse_buffer[counter_buffer] = ((signed int)UDP_Receive_Buffer[1])-48;
          //SYS_CONSOLE_PRINT("Distance = %d Vitesse = %d\n\r",  commande_distance_buffer[counter_buffer], commande_vitesse_buffer[counter_buffer]);        
          if(counter_buffer ==  SIZE_BUFFER - 1)
          {
              counter_buffer = 0;
          }
          else 
          {
              counter_buffer++;
          }
          Moyenne_Mobile();
          }
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************



/*******************************************************************************
  Function:
    void USART0_init ( void )

  Remarks:
    See prototype in main.h.
 */

bool USART0_init(void)
{
    bool initializedProperly = 1; 
    if (mainData.handleUSART0 == DRV_HANDLE_INVALID)
    {
        mainData.handleUSART0 = DRV_USART_Open(MAIN_DRV_USART, DRV_IO_INTENT_READWRITE|DRV_IO_INTENT_NONBLOCKING);
        initializedProperly = (mainData.handleUSART0 != DRV_HANDLE_INVALID);
    }    
    return initializedProperly; 
}

/*******************************************************************************
  Function:
    void MAIN_Initialize ( void )

  Remarks:
    See prototype in main.h.
 */


void MAIN_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    mainData.state = MAIN_STATE_INIT;

    mainData.handleUSART0 = DRV_HANDLE_INVALID;

    SSD_Init();
    UDP_Initialize();
    LCD_Init();
    ADC_Init();
    MOT_Init(1);
    Buffer_Init();
    PID_Init(PID);
    
//    RGBLED_Init();

    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void MAIN_Tasks ( void )

  Remarks:
    See prototype in main.h.
 */

void MAIN_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( mainData.state )
    {
            /* Application's initial state. */
        case MAIN_STATE_INIT:
        {
            bool appInitialized = true;
            
            SYS_CONSOLE_MESSAGE("Init\r\n");

            appInitialized &= USART0_init();
            //d'autres initialisations pourraient être faites ici

            if (appInitialized)
            {
                mainData.state = MAIN_STATE_SERVICE_TASKS;
            }
            break;
        }

        case MAIN_STATE_SERVICE_TASKS:
        {
//            LedTask();
//            accel_tasks();
            adc_tasks();
            control_tasks(PID, commande_distance_filtre, commande_vitesse_filtre);
            UDP_Tasks();
            Commande_reception();
//            printf();
            ManageCom();
            LED0Toggle();
            JB1Toggle();        //LED heartbeat
            
            global_events.tic_toc = true;
            break;
        }
            /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}

int main(void) {
    
    SYS_Initialize(0);
    MAIN_Initialize();
    
    while (1) {
        SYS_Tasks();
        MAIN_Tasks();
    };

    return 0;
}



/*******************************************************************************
 End of File
 */
