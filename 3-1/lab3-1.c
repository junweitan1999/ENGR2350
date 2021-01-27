
#include <c8051_SDCC.h>
#include <stdio.h>


#define pw_min 1843               // set limits for the pulsewidth
#define pw_max 35020
#define PCA_start 28671

void PCA_Init(void);
void Port_Init(void);
void XBR0_Init(void);
void Interrupt_Init(void);
void PCA_ISR(void) __interrupt 9;
unsigned int Find_pw();

unsigned int PW = 18432;           // pulsewidth for speed controller
unsigned int LED_max = 0;
unsigned int LED_min = 0;
unsigned char input;

void main()
{
    Sys_Init();            // initial functions in c8051_SDCC.h file
    putchar(' ');
    Port_Init();
    XBR0_Init();           // initialize XBAR
    Interrupt_Init();      // initialize Interrupts
    PCA_Init ();           // initialize PCA
    printf("\r\n Start    ");
    printf("\r\n b - increases pulse width by 200");
    printf("\r\n d - decreases pulse width by 200");
    PCA0CP3 = 65535 - PW; // set initial pulse width
//  PCA0CPL1 = 65535 - PW;
//  PCA0CPH1 = (65535 - PW) >> 8;
    while(LED_max <= LED_min)
    {
        printf("\r\nfind min\r\n");
        LED_min = Find_pw();
        printf("\r\nfind max\r\n");
        LED_max = Find_pw();
    }
    printf("\r\nfinished\r\n");
    while(1)
    {
        input = getchar();
        if (input == 'b')
        {
            if (PW < LED_max) 
            {
                PW += 200;
                PCA0CP3 = 65536 - PW;  // change pulse width
//              PCA0CPL3 = 65535 - PW;
//              PCA0CPH3 = (65535 - PW) >> 8;
            }
        }
        if (input == 'd')
        {
            if (PW > LED_min) 
            {
                PW -= 200;
                PCA0CP3 = 65535 - PW;  // change pulse width
//              PCA0CPL3 = 65535 - PW;
//              PCA0CPH3 = (65535 - PW) >> 8;
            }
        }
        printf(" PCA_start = %u  PW = %u      \r", PCA_start,PW);
    }
}

void Port_Init()
{
    P1MDOUT |= 0x10;
}

void XBR0_Init()
{
    XBR0 = 0x27;     // set up URART0, SPI, SMB, and CEX 0-3
}

void Interrupt_Init()
{
    EIE1 |= 0x08;    // enable PCA interrupts
    EA = 1;          // enable all interrupts
}


void PCA_Init()
{
    PCA0MD = 0x81;   // SYSCLK/12, enable CF interrupts, suspend when idle
    PCA0CPM3 = 0xC2; // 16 bit, enable compare, enable PWM
    PCA0CN |= 0x40;  // enable PCA
}


void PCA_ISR(void) __interrupt 9
{
    if (CF)
    {
        PCA0 = PCA_start;       // start count
//      PCA0L = PCA_start;      // low byte of start count
//      PCA0H = PCA_start >> 8; // high byte of start count
        CF = 0;                 // Very important - clear interrupt flag
    }
    else PCA0CN &= 0xC0;        // all other type 9 interrupts
}

unsigned int Find_pw()
{
    input = 0;
    while(input != 's')
    {
        input = getchar();
        if (input == 'b')
        {
            if (PW < pw_max) 
            {
                PW += 200;
                PCA0CP3 = 65536 - PW;  // change pulse width
    //              PCA0CPL3 = 65535 - PW;
    //              PCA0CPH3 = (65535 - PW) >> 8;
            }
        }
        if (input == 'd')
        {
            if (PW > pw_min) 
            {
                PW -= 200;
                PCA0CP3 = 65535 - PW;  // change pulse width
    //              PCA0CPL3 = 65535 - PW;
    //              PCA0CPH3 = (65535 - PW) >> 8;
            }
        }
        printf(" PCA_start = %u  PW = %u      \r", PCA_start,PW);
    }
    return PW;
}
