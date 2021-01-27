#define RIN     661699507
#include "C8051_SIM.h"
#include <stdio.h>
#include <stdlib.h>

//prototypes
void Port_Init(void);
void PCA_Init (void);
//void XBR0_Init();
void Drive_Motor(void);
void SMB_Init(void);
void PCA_ISR (void);
unsigned int ReadRanger();

//global variables
unsigned int PW_CENTER= 2765; //approx. 1.5ms
unsigned int PW_MIN= 2028; //min 1.1ms
unsigned int PW_MAX= 3502; //max 1.9ms
unsigned int PW = 0;
unsigned int PCA_START=28672;
unsigned int PCA_overflows = 0;
unsigned int PCA_Counter = 0;
unsigned int new_range = 0; // flag to determine whether a new range is ready to be read
unsigned int r_count = 0;
unsigned char addr = 0xE0; // address of ranger
unsigned int distance;
unsigned char Data[2];


#define SS P3_6


void main(void){
    Sys_Init();
    putchar(' ');
    Port_Init();
    PCA_Init();
    SMB_Init();

    printf("Embedded Control Pulsewidth Calibration\r\n");
    PW = PW_CENTER;
    PCA0CP2 = 0xFFFF - PW;
    PCA_Counter = 0; //reset counter
    while(PCA_Counter < 50){
        Sim_Update();
    }

    while (1){
        Sim_Update();
        if (new_range){ //if 80ms has passed
            distance = ReadRanger(); //call ranger distance function
            Data[0] = 0x51;
            i2c_write_data(addr, 0, Data, 1); // write one byte of data to register 0 at addr
            new_range = 0; //clear flag
        	Drive_Motor();
        }
    }
}

void Drive_Motor(){
    if(!SS){
        PW = PW_CENTER;
    }
    else {
        if (distance <= 10){ // forward
            PW = PW_MAX;
        }
        if (distance >= 40 && distance <= 50){//neutral
            PW = PW_CENTER;
        }
        if (distance >= 90){ // backwards
            PW = PW_MIN;
        }
        if (distance > 10 && distance < 40){//linear between max forward and neutral
            PW = -1 * 24.63 * distance + 3754;
        }
        if (distance > 50 && distance < 90){ //linear between max reverse and neutral
            PW = -1 * 18.45 * distance + 3692;
        }
    }
    if (PW > PW_MAX){
        PW = PW_MIN;
    }
    if (PW < PW_MIN){
        PW = PW_MAX;
    }
    PCA0CP2 = 0xFFFF - PW;

	printf("The current range is %d cm\r\n",distance);
    printf("The current pulse width is %d\r\n",PW);
}



void Port_Init(){
    P1MDOUT = 0x0D;  //set output pin for CEX0, CEX2 and CEX3 in push-pull mode
    P3MDOUT &= ~0x70; // Set 3.6 and 3.7 to input
    P3 |= 0x70; // Set 3.6 and 3.7 to high impedance
    XBR0 = 0x27;  //configure crossbar as directed in the laboratory
}

void PCA_ISR (void){
// reference to the sample code in Example 4.5 -Pulse Width Modulation
// implemented using the PCA (Programmable Counter Array), p. 50 in Lab Manual.
    PCA_Counter++;
    if (CF){
        CF = 0; // clear overflow flag
        PCA0 = PCA_START; // 20ms period
        r_count ++;
        if(r_count>=4){
            new_range = 1; // 4 overflows is about 80 ms
            r_count = 0;
        }
    }
    PCA0CN &= 0x40;// handle other pca interrupt resources
}


void PCA_Init(void){
    PCA0MD =0x81; //enable cf interrupt & SYSCLK/12
    PCA0CPM0 = PCA0CPM2 = 0xC2; //Enable CCM2 16bit
    PCA0CN = 0x40; //Enable PCA Counter
    EA = 1; // Enable Global Interrupt
    EIE1 |= 0x08; // Enable PCA Interrupt
}


unsigned int ReadRanger() {
    unsigned char Data[2];
    unsigned int range =0;
    i2c_read_data(addr, 2, Data, 2); // read two bytes, starting at reg 2
    range = (((unsigned int)Data[0] << 8) | Data[1]);
    return range;
}

void SMB_Init(void){
    SMB0CR = 0x93; // set scl to 100khz
    ENSMB = 1; // enable SMBus
}

