#include<c8051_SDCC.h>
#include<stdio.h>
#include <stdlib.h>

void Port_Init(void);
void Interrupt_Init();
void Timer_Init();
void ADC_Init(void);
void click(void);
unsigned char read_AD_input(unsigned char n);
void mode3(void);
unsigned char generate_random_number();

__sbit __at 0xA4 BILED0;//p2.4 out
__sbit __at 0xA5 BILED1;//p2.5 out

__sbit __at 0xA2 PB0;//p2.2 in
__sbit __at 0xA3 PB1;//p2.3 in

__sbit __at 0xA0 SS0;//p2.0 in
__sbit __at 0xA1 SS1;//p2.1 in

__sbit __at 0xB0 LED0;//p3.0 out
__sbit __at 0xB1 LED1;//p3.1 out
__sbit __at 0xB2 LED2;//p3.2 out
__sbit __at 0xB3 LED3;//p3.3 out
__sbit __at 0xB4 LED4;//p3.4 out
__sbit __at 0xB5 LED5;//p3.5 out
__sbit __at 0xB6 LED6;//p3.6 out
__sbit __at 0xB7 LED7;//p3.7 out



int counts=0;

void main(void)
{
    Sys_Init();      // System Initialization
    Port_Init();     // Initialize ports 2 and 3 
    Interrupt_Init();
    Timer_Init();    // Initialize Timer 0 
    ADC_Init();
    putchar(' ');    // the quote fonts may not copy correctly into SiLabs IDE
    printf("Start\r\n");
	mode3();

}


void Port_Init(void){
	P1MDIN &= ~0x01;  //set p1.0 for analog input
	P1MDOUT &= ~0x01; //set p1.0 to open drain
	P1 |= 0x01; //send logic 1 to input pin p1.0


	P2MDOUT &= ~0x0F;
	P2 |= 0x0F;

	P2MDOUT |= 0x30;

	P3MDOUT |= 0xFF;
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

void ADC_Init(void)
{
	REF0CN = 0x03;  //set Vref to use interal ref. voltage (2.4V)
	ADC1CN = 0x80; //enable A/D converter (ADC1)
	ADC1CF &=~0x03;  //clear gain bits to 0
	ADC1CF |=0x00; //set A/D converter gain to 0.5
}

unsigned char read_AD_input(unsigned char n){
	AMX1SL=n;  //set p1.n as the analog input for ADC1
	ADC1CN = ADC1CN & ~0x20; //clear the "conversion completed" flag
	ADC1CN = ADC1CN | 0x10;  //initiate A/D conversion 

	while((ADC1CN & 0x20) == 0x00);  //wait for conversion to complete

	return ADC1;  //return digital value in ADC1 register
}




///mode 3

void blink()
{
	int currentcounts;
	TR0 = 1;
	


	while ( PB1 && PB0 )
	{	
		currentcounts=counts;
		while (counts < currentcounts + 54 )
		{
			LED0=0;  // turn on all LED for 160ms
			LED1=0;
			LED2=0;
			LED3=0;
			LED4=0;
			LED5=0;
			LED6=0;
			LED7=0;
		}
		
		currentcounts = counts;
		while (counts < currentcounts + 54 )
		{
			LED0=1;	// turn off all LED FOR 160ms
			LED1=1;
			LED2=1;
			LED3=1;
			LED4=1;
			LED5=1;
			LED6=1;
			LED7=1;
		}
	}
}

unsigned char generate_random_number()
{
	unsigned char var;
	unsigned char high_bits = 0;

	int i;

	var= rand()%255;
	while (high_bits < 3)
	{
		srand(rand());
		var= rand()%255;
		for(i=0;i<8;i++)
		{
			high_bits += (var>>i) & 0x01;
		}
	}
	printf("convert number : 0x%x", var);
	return var;
}

void mode3(void)
{
	unsigned char var;
	unsigned char input=0b00000000;
	unsigned char PoT;

	int score;
	int overflow;
	int temporarycount;
	int score_timer;
	int submit_timer = 0;
	int debounce_count;
	char mode=0;  // 0 for bit select mode // 1 for lock in bits mode

	blink();
	var = generate_random_number();
	

	score_timer=counts;
	while ( counts < score_timer + 10125)  // wait for max time 30s
	{

		if (mode == 1)  // lock-in bit mode
		{
			
			int lock_in_counts = counts;
			printf("mode1\r");
			while ( counts < lock_in_counts + 168)   //show user input for 500ms
			{
				BILED0 = 1;  //BILED RED
    			BILED1 = 0;
				printf("display user input\n");
    			P3 = ~input;  // display the user input a LEDs   ????
    			mode=0;
    			break;

			}
			debounce_count = counts;
			while ( counts < debounce_count + 54);
			if (!PB1) 
			{
				printf("submite\n");
				submit_timer=counts;  // store the time break the loop
				break;
			}
			
			
		}

		else if (mode == 0 )  //bit selecting mode
		{

			
			printf("mode0\r\n");
			BILED0 = 0;
			BILED1 = 1;  //BILED GREEN

			debounce_count = counts;
			while ( counts < debounce_count + 54);
			while (PB1 && PB0)
			{
				PoT = read_AD_input(0);
				if (PoT < 17) 
					{
						P3|=0xFF;
						LED0=0;
					}
				else if (PoT < 34) 
					{
						P3 |= 0xFF;
						LED1=0;
					}
				else if(PoT < 51) 
					{
						P3 |= 0xFF;
						LED2=0;
					}
				else if(PoT < 68) 
					{
						P3 |= 0xFF;
						LED3=0;
					}
				else if(PoT < 85)	 //light up correspond LED
					{
						P3 |= 0xFF;
						LED4=0;
					}
				else if(PoT < 102) 
					{
						P3 |= 0xFF;
						LED5=0;\
					}   
				else if(PoT < 119) 
					{
						P3 |= 0xFF;
						LED6=0;
					}
				else  
					{
						P3 |= 0xFF;
						LED7=0;
					}
			}
			if (!PB0)
			{
				debounce_count = counts;
				while ( counts < debounce_count + 54);
				PoT = read_AD_input(0);
				BILED0 = 1;// BILED RED
				BILED1 = 0;
				temporarycount = counts;
				printf("changing bits\n");
				if (PoT < 17) 
				{
					input^=1<<0;
					while ( counts < temporarycount + 337)
					{
						P3 |= 0xFF;
						LED0=0;
					}
				}
				else if (PoT < 34) 
				{
					input^=1<<1;
					while ( counts < temporarycount + 337)
					{
						P3 |= 0xFF;
						LED1=0;
					}
				}
				else if(PoT < 51) 
				{
					input^=1<<2;
					while ( counts < temporarycount + 337)
					{
						P3 |= 0xFF;
						LED2=0;
					}
				}
				else if(PoT < 68) 
				{
					input^=1<<3;
					while ( counts < temporarycount + 337)
					{
						P3 |= 0xFF;
						LED3=0;
					}
				}
				else if(PoT < 85) 
				{
					input^=1<<4;
					while ( counts < temporarycount + 337)
					{
						P3 |= 0xFF;
						LED4=0;
					}
				}  
				else if(PoT < 102)
				{
					input^=1<<5;
					while ( counts < temporarycount + 337)
					{
						P3 |= 0xFF;
						LED5=0;
					}
				}
				else if(PoT < 119) 
				{
					input^=1<<6;
					while ( counts < temporarycount + 337)
					{
						P3 |= 0xFF;
						LED6=0;
					}
				}
				else
				{
					input^=1<<7;
					while ( counts < temporarycount + 337)
					{
						P3 |= 0xFF;
						LED7=0;
					}
				}
			}
			if (!PB1)
			{
				debounce_count = counts;
				while ( counts < debounce_count + 54);
				mode =1; //toggle active display mode
				printf("mode switched\r");
			}

		}
	}
	
	if (var == input) 
	{
		overflow = score_timer + 10125 - submit_timer;
		score = overflow / 337;
		printf("Answer correct! \n\t Overflows: %d Score: %d",overflow,score);


		BILED0 = 0;
		BILED1 = 1;  //BILED GREEN INDICATE CONVERSION SUCCESS
	}

	else if(var != input)
	{
		overflow = score_timer + 10125 - submit_timer;
		score = 0;
		printf("Answer Incorrect! \n\t Overflows: %d Score: %d\n",overflow,score);

		printf("%x",input);
		BILED0 = 1;
		BILED1 = 0;  //BILED RED INDICATE FAILURE
	}

}