/*
 *
 * @file main.c
 * @brief Main routine
 *
 * @section License
 *
 * Copyright (C) 2010-2018 Oryx Embedded SARL. All rights reserved.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 *
 * @author Oryx Embedded SARL (www.oryx-embedded.com)
 * @version 1.9.0
 **/

//Dependencies
#include <stdlib.h>
#include "xparameters.h"
#include <stdio.h>
#include "xil_io.h"
#include "os_port.h"
#include "core/net.h"
#include "net_config.h"
#include "drivers/eth/enc624j600_driver.h"
#include "core/udp.h"
#include "error.h"
#include "std_services/echo.h"
#include "xgpio.h"
#include "xuartlite.h"
#include "xspi.h"
#include "myip.h"
#include "in_potentio.h"
#include "out_SSD.h"
#include "spi_driver.h"
#include "ext_int_driver.h"
#include <stdbool.h>
#include "xil_printf.h"


//Application configuration
#define APP_USE_DEFAULT_MAC_ADDR ENABLED
#define APP_MAC_ADDR "00-AB-CD-EF-07-95"

#define APP_USE_DHCP DISABLED
#define APP_IPV4_HOST_ADDR "192.168.1.2"
#define APP_IPV4_SUBNET_MASK "255.255.255.0"
#define APP_IPV4_DEFAULT_GATEWAY "192.168.1.1"
#define APP_IPV4_PRIMARY_DNS "8.8.8.8"
#define APP_IPV4_SECONDARY_DNS "8.8.4.4"

#define APP_USE_SLAAC DISABLED


#define INTC_DEVICE_ID			XPAR_CALCUL_MOYENNE_AXI_INTC_0_DEVICE_ID
#define MY_IP_BASE_ADDRESS     	XPAR_CALCUL_MOYENNE_MYIP_0_S00_AXI_BASEADDR
#define MYIP_REG_0  			MYIP_S00_AXI_SLV_REG0_OFFSET
#define MYIP_REG_1  			MYIP_S00_AXI_SLV_REG1_OFFSET
#define MYIP_REG_2  			MYIP_S00_AXI_SLV_REG2_OFFSET

#define IN_POTENTIO_BASE_ADDRESS     	XPAR_IN_POTENTIO_0_S00_AXI_BASEADDR
#define IN_POTENTIO_REG_0  			IN_POTENTIO_S00_AXI_SLV_REG0_OFFSET
#define IN_POTENTIO_REG_1  			IN_POTENTIO_S00_AXI_SLV_REG1_OFFSET
#define IN_POTENTIO_REG_2  			IN_POTENTIO_S00_AXI_SLV_REG2_OFFSET

#define OUT_SSD_BASE_ADDRESS     	XPAR_OUT_SSD_0_S00_AXI_BASEADDR
#define OUT_SSD_REG_0  			OUT_SSD_S00_AXI_SLV_REG0_OFFSET
#define OUT_SSD_REG_1  			OUT_SSD_S00_AXI_SLV_REG1_OFFSET
#define OUT_SSD_REG_2  			OUT_SSD_S00_AXI_SLV_REG2_OFFSET

//Nombre total d'echelle de vitesse - Si > 12, SSD a modifier
#define MAX_VITESSE 10
#define DELAIS_DISTANCE 100000
#define DELAIS_VITESSE  100000


//Global variables

bool bool_SSD = false;

XGpio inputBTN;
int btn_data = 0;
int distance = 0;
int vitesse = 0;

int compteur_distance = 0;
int compteur_vitesse  = 0;

//Ethernet interrupt service routine
//void __ISR(_ETH_VECTOR, IPL1AUTO) ethIrqWrapper(void);

u32 counter = 0;
XGpio outputLED;


unsigned int ReceivedCount = 0;
char buffer_com[2] = {'0','0'};



/**
 * @brief System initialization
 **/

Ipv4Addr ipv4Addr;

void systemInit(void)
{
   error_t error;
   MacAddr macAddr;

   //Initialize kernel
   osInitKernel();

   //TCP/IP stack initialization
   error = netInit();

   //Configure the first Ethernet interface

   //Set interface name
   netSetInterfaceName(&netInterface[0], "eth0");
   //Set host name
   netSetHostname(&netInterface[0], "UDPEcho");
   //Select the relevant network adapter
   netSetDriver(&netInterface[0], &enc624j600Driver);
   //netSetPhyDriver(interface, &lan8720PhyDriver);

   netSetSpiDriver(&netInterface[0], &spiDriver);
   netSetExtIntDriver(&netInterface[0], &extIntDriver);

#if (APP_USE_DEFAULT_MAC_ADDR == ENABLED)
   //Use the factory preprogrammed MAC address
   macStringToAddr("00-00-00-00-00-00", &macAddr);
   netSetMacAddr(&netInterface[0], &macAddr);
#endif

   //Initialize network interface
   error = netConfigInterface(&netInterface[0]);
   //Any error to report?

#if (IPV4_SUPPORT == ENABLED)

   //Set IPv4 host address
   ipv4StringToAddr(APP_IPV4_HOST_ADDR, &ipv4Addr);
   ipv4SetHostAddr(&netInterface[0], ipv4Addr);

   //Set subnet mask
   ipv4StringToAddr(APP_IPV4_SUBNET_MASK, &ipv4Addr);
   ipv4SetSubnetMask(&netInterface[0], ipv4Addr);

   //Set default gateway
   ipv4StringToAddr(APP_IPV4_DEFAULT_GATEWAY, &ipv4Addr);
   ipv4SetDefaultGateway(&netInterface[0], ipv4Addr);

   //Set primary and secondary DNS servers
   ipv4StringToAddr(APP_IPV4_PRIMARY_DNS, &ipv4Addr);
   ipv4SetDnsServer(&netInterface[0], 0, ipv4Addr);
   ipv4StringToAddr(APP_IPV4_SECONDARY_DNS, &ipv4Addr);
   ipv4SetDnsServer(&netInterface[0], 1, ipv4Addr);
#endif

   //init_platform();
}


void MyIP_InterruptHandler(void *CallbackRef)
{
	XIntc_Acknowledge(&InterruptController, XPAR_CALCUL_MOYENNE_AXI_INTC_0_SYSTEM_INT_NIC100_INTR);

	u32 valeur;
	u32 moyenne;
	u32 somme;

	// lire la nouvelle valeur ins�r�e dans le registre 0 de myIP
	valeur =  MYIP_mReadReg(MY_IP_BASE_ADDRESS, MYIP_REG_0);
	xil_printf("Nouvelle valeur = %d\t",  valeur);

	// lire la somme courante dans le registre 2 de myIP
	somme =  MYIP_mReadReg(MY_IP_BASE_ADDRESS, MYIP_REG_2);
	xil_printf("Somme = %d\t",  somme);

	// lire la moyenne courante dans le registre 1 de myIP
	moyenne =  MYIP_mReadReg(MY_IP_BASE_ADDRESS, MYIP_REG_1);
	xil_printf("Moyenne = %d\n\r", moyenne);

}

int SetupInterruptSystem()
{

	int Status;

	Status = XIntc_Initialize(&InterruptController, INTC_DEVICE_ID);

	/*
	 * Connect a device driver handler that will be called when an interrupt
	 * for the device occurs, the device driver handler performs the
	 * specific interrupt processing for the device.
	 */
	Status = XIntc_Connect(&InterruptController, XPAR_CALCUL_MOYENNE_AXI_INTC_0_SYSTEM_INT_NIC100_INTR,
			   (XInterruptHandler)MyIP_InterruptHandler,
			   (void *)0);

	Status = XIntc_Connect(&InterruptController, XPAR_CALCUL_MOYENNE_AXI_INTC_0_SYSTEM_INT_NIC100_INTR,
			   (XInterruptHandler)ENC_Int_Handler,
			   (void *)0);


	Status = XIntc_Start(&InterruptController, XIN_REAL_MODE);

	XIntc_Enable(&InterruptController, XPAR_CALCUL_MOYENNE_AXI_INTC_0_SYSTEM_INT_NIC100_INTR);

	Xil_ExceptionInit();

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
				(Xil_ExceptionHandler)XIntc_InterruptHandler,
				&InterruptController);

	Xil_ExceptionEnable();

	return XST_SUCCESS;
}




/**
 * @brief LED blinking task a
 **/


void blinkTask()
{
	if(counter++>500000)
	{
		XGpio_DiscreteWrite(&outputLED, 2, XGpio_DiscreteRead(&outputLED, 2) ^ 0x2);
		//xil_printf("%u\r\n", XGpio_DiscreteRead(&outputLED, 2));
		counter = 0;
	}
}


XUartLite UartLite;
#define TEST_BUFFER_SIZE 16
u8 SendBuffer[TEST_BUFFER_SIZE];	/* Buffer for Transmitting Data */
u8 RecvBuffer[TEST_BUFFER_SIZE];	/* Buffer for Receiving Data */

void uartInit(){
	int Status;
	unsigned int SentCount;
	int Index;

	Status = XUartLite_Initialize(&UartLite, XPAR_AXI_UARTLITE_0_DEVICE_ID);
	Status = XUartLite_SelfTest(&UartLite);

}


void uartTask(){
		ReceivedCount += XUartLite_Recv(&UartLite,
					   RecvBuffer + ReceivedCount,
					   TEST_BUFFER_SIZE - ReceivedCount);

}

/**
 * @brief Main entry point
 * @return Unused value
 **/
//const char* allo = "Hi type somtin\n\r";

bool udpSocketUp = false;

void task_vitesse(){
	if(compteur_vitesse++ > DELAIS_VITESSE){
		//xil_printf("Task vitesse\n\r");

		//lecture des boutons
		btn_data = XGpio_DiscreteRead(&inputBTN, 1);

		//si seulement le btn de droite (btn[0]) est appuy�, on augmente la variable de vitesse si elle n'est pas deja au max
		if(btn_data == 1){
			if(vitesse == MAX_VITESSE){}
			else{
				vitesse++;
				bool_SSD = true;
				buffer_com[1] = (unsigned char)(vitesse+48);
			}
		}

		//si seulement le btn de gauche (btn[3]) est appuy�, on diminue la variable de vitesse si elle n'est pas deja a 0
		if(btn_data == 8){
			if(vitesse == 0){}
			else{
				vitesse--;
				bool_SSD = true;
				buffer_com[1] = (unsigned char)(vitesse+48);
			}
		}
		compteur_vitesse = 0;
	}
}

void task_distance(){
	if(compteur_distance++ > DELAIS_DISTANCE){
		//xil_printf("Task distance\n\r");

		//si la lecture du pot est different, on update
		if(IN_POTENTIO_mReadReg(XPAR_IN_POTENTIO_0_S00_AXI_BASEADDR, IN_POTENTIO_REG_1) != distance){
			distance = IN_POTENTIO_mReadReg(XPAR_IN_POTENTIO_0_S00_AXI_BASEADDR, IN_POTENTIO_S00_AXI_SLV_REG1_OFFSET);
			bool_SSD = true;
			buffer_com[0] = (unsigned char)(distance+48);
		}
		compteur_distance = 0;
	}
}

void update_SSD(){
	//updater les registres 0 et 1 du SSD modifie ce qu'il affiche
	OUT_SSD_mWriteReg(XPAR_OUT_SSD_0_S00_AXI_BASEADDR, OUT_SSD_S00_AXI_SLV_REG0_OFFSET, distance);
	OUT_SSD_mWriteReg(XPAR_OUT_SSD_0_S00_AXI_BASEADDR, OUT_SSD_S00_AXI_SLV_REG1_OFFSET, vitesse);

	xil_printf("New Distance = %d\tVitesse = %d\n\r", distance, vitesse);

	bool_SSD = false;
}

void init_GPIO(){
	//xil_printf("Debut de l'init des GPIO\n\r");

	// initialiser GPIO
	XGpio_Initialize(&inputBTN, XPAR_AXI_GPIO_1_DEVICE_ID);

	//Fixer la direction du GPIO
	XGpio_SetDataDirection(&inputBTN, 1, 0xF);

	//xil_printf("Fin de l'init des GPIO\n\r");
}

int_t main(void)
{
   char c;
   XGpio_Initialize(&outputLED, XPAR_AXI_GPIO_0_DEVICE_ID);
   XGpio_SetDataDirection(&outputLED, 1, 0x0); //Fixer la direction du port 1 de l'AXI_GPIO_1 comme output
   XGpio_DiscreteWrite(&outputLED, 2, 1);

   uartInit();

   context.socket = 0;
   init_GPIO();
   //Create user task
   print("Hello Projet\n\r");
   //print(allo);
   SetupInterruptSystem();
   systemInit();
   netTaskInit();


   while(1){
	   task_distance();
	   task_vitesse();

	   if(bool_SSD){update_SSD();}
	   blinkTask();
	   //uartTask();
	   //if(ReceivedCount)XUartLite_Send(&UartLite, (u8*)allo , strlen(allo));
	   if(ReceivedCount){
		   XUartLite_Send(&UartLite, RecvBuffer , ReceivedCount);
		   MYIP_mWriteReg(MY_IP_BASE_ADDRESS, MYIP_REG_0, counter);
		   ReceivedCount = 0;
	   }
	   /*u32 CurrentIER = Xil_In32(InterruptController.BaseAddress + XIN_ISR_OFFSET);
	   if(CurrentIER & 0x2)print("active");
	   if(CurrentIER)xil_printf("%d\n\r", CurrentIER);*/
	   netTask();
	   if(netInterface[0].linkState == 1){
		   if(!udpSocketUp){
			   	   udpEchoStart();
				   udpSocketUp = true;
		   }
		   else udpEchoTask(buffer_com);
	   }
	   else
	   {
		   if(udpSocketUp){
			   udpSocketUp = false;
		   }

	   }
	   udpEchoTask(buffer_com);
   }

   //This function should never return
   return 0;
}
/* main.c
 *
 *  Created on: 25 mars 2019
 *      Author: jbm
 */



