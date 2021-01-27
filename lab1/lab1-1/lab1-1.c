/*  Name:Junwei Tan
    Section:2
    Date:2020/1/29
    File name:lab1-1
    Program description:
*/
/*
  This program is incomplete. Part of the code is provided as an example. You 
  need to modify the code, adding code to satisfy the stated requirements. Blank 
  lines have also been provided at some locations, indicating an incomplete line.
*/
#include <c8051_SDCC.h> // include files. This file is available online on LMS
#include <stdio.h>

//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Port_Init(void);  // Initialize ports for input and output
void Set_outputs(void);// function to set output bits

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------
__sbit __at 0xB6 LED0; // LED0, associated with Port 3 Pin 6  10110110
__sbit __at 0xB3 BILED0; // BILED0, associated with Port 3, Pin 3
__sbit __at 0xB4 BILED1; // BILED1, associated with Port 3, Pin 4
__sbit __at 0xB7 Buzzer; // Buzzer, associated with Port 3, Pin 7
__sbit __at 0xA0 SS;   // Slide switch, associated with Port 2 Pin 0 1100
__sbit __at 0xB0 PB1;  // Push button 1, associated with Port 3, Pin 0
__sbit __at 0xB1 PB2; // Push button 2, associated with Port 3, Pin 


//***************
// Main program

void main(void)
{
    Sys_Init();        // System Initialization
    putchar(' ');      // the quote fonts may not copy correctly into SiLabs IDE
    Port_Init();       // Initialize ports 2 and 3 

    while (1)          // infinite loop 
    {
        // main program manages the function calls

        Set_outputs();
    }
}


//***************
/* Port_Init - Initializes Ports 2 and 3 in the desired modes for input and output */

void Port_Init(void)
{
    // Port 3
    P3MDOUT |=0xD8; // set Port 3 output pins to push-pull mode (fill in the blank) 11101000
    P3MDOUT &=0xFC; // set Port 3 input pins to open drain mode (fill in the blank) 11111100
    P3 |=~0xFC; // set Port 3 input pins to high impedance state (fill in the blank)

    // Port 2
    // configure Port 2 as needed
    P2MDOUT &= 0xFE;
    P2 |= 0x01;
//
//
}



//***************
// Set outputs:
//    The following code is incomplete, lighting an LED depending 
//    on the state of the slide switch.



void Set_outputs(void)
{
    if (!SS)        // if Slide Switch activated (On position)
    {
        
        
        if (PB1==0 && PB2==0)
        {
            LED0 = 1;
            Buzzer = 1;
            BILED0 = 0;
            BILED1 = 1;
            printf("biled is red 2 PBs pressed");
        }
        else if (!PB1 && PB2==1)
        {
            LED0 = 1;
            Buzzer = 0;
            BILED0=1;
            BILED1=1;
            printf("buzzer is on");
        }
        else if (PB1==1 && !PB2)
        {
            LED0 = 0;
            Buzzer = 1;
            BILED0=1;
            BILED1=1;
            printf("led is on");
        }
        else
        {
            BILED0 = 1;   // turn off BILED 
            BILED1 = 1;
            printf("\r biled off\n");
        }

    }
    else            // if Slide Switch is not activated (Off position)
    {
        LED0 = 1;   // turn off LED0 
        BILED1 = 0;
        BILED0 = 1;
        Buzzer = 1;
        
        printf("\r Slide switch is off   \n");	
    }
}

