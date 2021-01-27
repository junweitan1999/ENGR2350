/* ENGR-2350 SPRING 2020 - LAB0
 * SIMULATOR TEMPLATE LAB
 * */

//#include<c8051_SDCC.h>
#include "C8051_SIM.h"
#include<stdio.h>
#include<stdlib.h>

void PCA_Init();
void Interrupt_Init();
unsigned int ReadRanger();
unsigned int counts = 0;
unsigned int new_light = 0;
unsigned int printed_light=0;

void main(void){
    Sys_Init();
    putchar(0);
    PCA_Init();
    Interrupt_Init();


    XBR0 = 0x27;
    SMB0CR = 0X93;
    ENSMB=1;

    while(1){
        Sim_Update();   // This function synchronizes the simulation and this program
                        // Sim_Update() needs to be called in EVERY LOOP
        if (new_light){

            new_light = 0; //  reset flag

            printed_light = ReadRanger();
            printf("%u",printed_light);
        }



    }
}

void PCA_Init(void){
    PCA0MD |= 0x01; // SYSCLK/12, Interrupt Enable
    CR = 1; // Same as PCA0CN |= 0x40;
}

void Interrupt_Init(void){
    EIE1 |= 0x08;       // Enable PCA interrupt
    EA = 1;             // Globally Enable interrupts
}

void PCA_ISR ( void ){
    if(CF)
    {     // If a PCA overflow has occurred
        CF = 0;         // Clear the interrupt overflow flag
        PCA0 = 28672;   // Preload the counter for 20 ms operation
        counts++;       // Increment *all* our counters
        if(counts>4)
        {
            counts = 0;
            new_light = 1; // at least 4 overflows is about 80 ms
        }
    }
    else{   // If a CCM interrupt triggered the PCA ISR, clear and ignore.
        PCA0CN &= 0xC0;
    }
}

unsigned int ReadRanger(void)
{
    unsigned char Data[1];
    unsigned int light = 0;
    unsigned char addr=0xE0; // the address of the ranger is 0xE0
    i2c_read_data(addr, 0x01, Data, 1); // read one byte, starting at reg 1
    light = Data[0];
// * insert ping initiation here *

    Data[0] = 0x51; // write 0x51 to reg 0 of the ranger:
    i2c_write_data(addr, 0x00, Data, 1); // write one byte of data to reg 0 at addr


    return light;
}
