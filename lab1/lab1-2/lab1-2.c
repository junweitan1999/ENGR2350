/*  Names:
    Section:
    Date:
    File name:
    Description:
*/
/*
  This program demonstrates the use of T0 interrupts. The code will count the
  number of T0 timer overflows that occur while a slide switch is in the ON position.
*/

#include <c8051_SDCC.h>// include files. This file is available online
#include <stdio.h>
#include <stdlib.h>

//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Port_Init(void);      // Initialize ports for input and output
void Timer_Init(void);     // Initialize Timer 0 
void Interrupt_Init(void); //Initialize interrupts
void Timer0_ISR(void) __interrupt 1;
unsigned char random(void);
void wait (void);
void win (void);
void fail (void);
void off (void);
//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------
__sbit __at 0xB6 LED0; // LED0, associated with Port 3 Pin 6
__sbit __at 0xB3 BILED0; // BILED0, associated with Port 3, Pin 3
__sbit __at 0xB4 BILED1; // BILED1, associated with Port 3, Pin 4
__sbit __at 0xB7 Buzzer; // Buzzer, associated with Port 3, Pin 7
__sbit __at 0xA0 SS;   // Slide switch, associated with Port 2 Pin 0
__sbit __at 0xB0 PB1;  // Push button 1, associated with Port 3, Pin 0
__sbit __at 0xB1 PB2; // Push button 2, associated with Port 3, Pin 1
__sbit __at 0xB5 LED1; // LED1, associated with Port 3, Pin 5
// sbit settings are incomplete, include those developed 
// in Lab 1-1 and add the sbit setting for LED1
unsigned int counts = 0;
unsigned int turns=0;
unsigned int score=0;
unsigned int current,previous;

//***************
void main(void)
{
    Sys_Init();      // System Initialization
    Port_Init();     // Initialize ports 2 and 3 
    Interrupt_Init();
    Timer_Init();    // Initialize Timer 0 

    putchar(' ');    // the quote fonts may not copy correctly into SiLabs IDE
    printf("Start\r\n");
    while (1)
    {

        while (!SS){
			
            TR0=1;
            current=random();
            while (current==previous){
                current=random();

            }
            previous=current;

            if (turns==10)
            {
                printf("\rThe game is end, the score is %u \n",score);
                off();
                TR0=0;
            }
            else if(turns<10)
            {
                if(current==0)
                {
                    LED0=0;
                    LED1=1;

                    wait();
                    if(!PB1 && PB2){
                        win();
                    }
                    else{
                        fail();
                    }
                }
                else if(current==1)
                {
                    LED1=0;
                    LED0=1;

                    wait();
                    if (!PB2 && PB1){
                        win();
                    }
                    else{
                        fail();
                    }
                }
                else if(current==2)
                {
                    LED0=0;
                    LED1=0;

                    wait();
                    if (!PB1 && !PB2){
                        win();
                    }
                    else{
                        fail();
                    }
                }
            while(counts<676);
            counts=0;
            }
        }
        while (SS)     //When the slide switch is off, the game pause,
        {               //the game will resume when the SS from off to on
            TR0 = 0;    //Disable timer
            TMR0 = 0;
            counts = 0;
            if (turns == 10)   //End the game, gamers could restart the game 
                                //by turn the SS from OFF to ON
            {
                LED0 = 1;
                LED1 = 1;
                BILED0 = 0;
                BILED1 = 0;
                turns = 0;
                score = 0;
            }
			printf("\r reset \n");
        }
    }

      

   }

//***************
void Port_Init(void)
{
    // Port 3
    P3MDOUT |=0xF8; // set Port 3 output pins to push-pull mode (fill in the blank)
    P3MDOUT &=0xFC; // set Port 3 input pins to open drain mode (fill in the blank)
    P3 |=  0x03; // set Port 3 input pins to high impedance state (fill in the blank)
a
    // Port 2
    P2MDOUT &= 0xFE;
    P2|= 0x01;    

}

void Interrupt_Init(void)
{
    IE |= 0x02;      // enable Timer0 Interrupt request (by masking)
    EA = 1;       // enable global interrupts (by sbit)
}
//***************
void Timer_Init(void)
{

    CKCON |= 0x08;  // Timer0 uses SYSCLK as source
    TMOD &= 0xF0;   // clear the 4 least significant bits
    TMOD |= 0x01;   // Timer0 in mode 1
    TR0 = 0;           // Stop Timer0
    TMR0 = 0;           // Clear high & low byte of T0

}


//***************
void Timer0_ISR(void) __interrupt 1
{
    TF0=0;
    counts++; 
// add interrupt code here, in this lab, the code will increment the 
// global variable 'counts'
}

/******************************************************************************/
/*
  This function demonstrates how to obtain a random integer between 0 and 1 in
  C. You may modify and use this code to get a random integer between 0 and N.
*/

/*return a random integer number between 0, 1 and 2*/
unsigned char random(void)
{
    return (rand()%3);  // rand returns a random number between 0 and 32767.
                        // the mod operation (%) returns the remainder of 
                        // dividing this value by 2 and returns the result,
                        // a value of either 0 or 1.
}
void wait (void)
{
    while (counts < 338)
    {
        BILED0 = 0;
        BILED1 = 0;
    }
}
void win (void)
{
    score += 1;
    turns ++;
    BILED0 = 1;
    BILED1 = 0;
    counts=0;
}

void fail (void)
{
    BILED0 = 0;
    BILED1 = 1;
    turns ++;
    counts=0;
}
void off (void)
{
    BILED1=1;
    BILED0=1;
    LED1=1;
    LED0=1;
}