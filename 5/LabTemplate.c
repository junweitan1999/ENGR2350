/* ENGR-2350 SPRING 2020 - Lab 4
 * **** Template Code ****
 * */

#define PRINTTOFILE     "lab4.csv"
#define RIN             661832918

#include "C8051_SIM.h"
#include<stdio.h>
#include<stdlib.h>


#define PB	P2_7
#define SS	P3_0
void Port_Init(void);               // Initialize all the GPIO ports (I/O only)
void PCA_Init(void);                // Initialize PCA function
void XBR_Init(void);                // Initialize Crossbar function
void Interrupt_Init(void);          //Initialize interrupts function
void SMB_Init(void);                // Initialize I2C function
void read_accelerometer(void);
void set_servoPW(void);
void set_motorPW(void);
void start(void);
void stop(void);

signed int MOTOR_NEUT = 2765;       // Neutral              1.5 ms
signed int MOTOR_MAX = 3502;        // Full Forward         1.9 ms
signed int MOTOR_MIN = 2027;        // Full Reverse         1.1 ms
signed int MOTOR_PW;                // Current PW
signed int SERVO_CENTER = 2765;     // Centered             1.5 ms
signed int SERVO_RIGHT = 3871;      // All the way right    2.1 ms
signed int SERVO_LEFT = 1659;       // All the way left     0.9 ms
signed int SERVO_PW;                // Current PW

unsigned char counts = 0;           // PCA overflow counter
unsigned char new_range = 0;        // Flag denoting if a new range value should be retrieved (set in interrupt)
unsigned char new_print = 0;        // Flag denoting that we can print (set in interrupt)
unsigned char r_count = 0;          // Counter to reading the accelerator
unsigned char p_count = 0;          // Counter to count ?? ms for print delay
signed short acc_x = 0;
signed short acc_y = 0;
signed int acc_z = 0;


float ksteer = 289;                   // Proportional Gain constant for steering
float ksteer1 = 500;
float kdrive = 737;                   // Proportional Gain constant for Drive
float kdrive1 = 2000;
float kdrive2 = 1;
float kdrive3 = 20;


void main(void){

    Sys_Init();
    putchar(0);
    Port_Init();
    PCA_Init();
    Interrupt_Init();
    XBR_Init();
    SMB_Init();

    // Read ranger once to trigger ping.
    // Initialize the drive motor to neutral for 1 s
    // Set motor pulsewidth to neutral

    while(counts <= 50){ // Wait 1 second
        Sim_Update();   // Called in all loops!
        MOTOR_PW = MOTOR_NEUT;
        PCA0CP2 = 0xFFFF - MOTOR_PW;
    }

    // Clear the flag counter variables to prevent a double read

    r_count = 0;
    new_range = 0;

    // Print data headers


    while (PB == 1){
        Sim_Update();
    }// Make sure pushbutton is not pressed before starting
    Accel_Init_C();
    // Run program loop
        // while(1) loop may or may not be needed, depending on how it's implemented.
    while(1){
        Sim_Update();

        // This stuff below is close to what a team should have had at the end of Lab3-3 (with pieces missing)
        // This will likely need to be moved around to fit into Lab 4 in your algorithm
        if (new_range){
            new_range = 0;
            // Get distance and act upon it
            read_accelerometer();
            if (acc_x > 2000) acc_x = 2000;
            if (acc_x < -2000) acc_x = -2000;
            SERVO_PW = SERVO_CENTER + ksteer/ksteer1 * acc_x; // using proportional control to modify the pulsewidth of servo
            PCA0CP0 = 0xFFFF - SERVO_PW;


            if (acc_y > 2000) acc_y = 2000;
            if (acc_y < -2000) acc_y = -2000;
            MOTOR_PW = MOTOR_NEUT + kdrive/kdrive1 * acc_y + kdrive2/kdrive3 *abs(acc_x);  // using proportional control to modify the pulsewidth of motor
            set_motorPW();
            PCA0CP2 = 0xFFFF - MOTOR_PW;
        if(new_print){
            new_print = 0;
            printf("%d %d %d %d\r\n",acc_x, acc_y, SERVO_PW, MOTOR_PW);
        }


        }

    }
}

void Port_Init(void){
    P1MDOUT |= 0x0D;        // Make P1.0,.2,.3 outputs
    P3MDOUT &= 0xFE;// Fill in remaining
    P3 |= 0x01;
    P2MDOUT &= 0x7F;
    P2 |= 0x80;

}

void XBR_Init(void){
    XBR0 = 0x27;    // 00100111, Enable SPI, I2C, and CEX0-3
}

void PCA_Init(void){
    PCA0MD |= 0x01; // SYSCLK/12, Interrupt Enable
    PCA0CPM0 |= 0xC2; // Enable 16-bit PWM, compare function
    PCA0CPM2 |= 0xC2;
    PCA0CPM3 |= 0xC2;
    CR = 1; // Same as PCA0CN |= 0x40;
}

void Interrupt_Init(void){
    EIE1 |= 0x08;       // Enable PCA interrupt
    EA = 1;             // Globally Enable interrupts
}

void SMB_Init(void){
    SMB0CR = 0x93;      // Configure the I2C Clock Rate
    ENSMB=1;            // Enable the module
}



void read_accelerometer(void){
    unsigned char addr = 0x3A;
    unsigned char Data[2];
    unsigned char Datax[2];
    unsigned char Datay[2];
    char status_reg_a = 0;

    unsigned char acc_counts =0;
    i2c_read_data(addr, 0x27, Data, 1);
    status_reg_a = Data[0];

    while (acc_counts <5 ){
        Sim_Update();
        while(status_reg_a && 0x07 != 0x07){  // make sure data is ready
            i2c_read_data(addr, 0x27, Data, 1);
            status_reg_a = Data[0];
        }
        acc_counts ++;
        i2c_read_data(addr, 0x28, Datax, 2);  //read acceleration in x
        i2c_read_data(addr,0x2A,Datay,2);
        acc_x += (((signed short)Datax[1] << 8) | (signed short)Datax[0]);
        acc_y += (((signed short)Datay[1] << 8) | (signed short)Datay[0]);

    }
    acc_x = acc_x / 5;
    acc_y = acc_y / 5;
}


void set_servoPW(){
    if (SS){
        SERVO_PW= 2765;
    }// Suggest adding slide switch control here
    else{
        if(SERVO_PW > SERVO_RIGHT){
            SERVO_PW = SERVO_RIGHT;
        }else if(SERVO_PW < SERVO_LEFT){
            SERVO_PW = SERVO_LEFT;
        }
    }
    PCA0CP0 = 0xFFFF - SERVO_PW;
}

void set_motorPW(){
    if (SS) {// Suggest adding slide switch control here
        MOTOR_PW = 2765;
    }
    else{
        if(MOTOR_PW > MOTOR_MAX){
            MOTOR_PW = MOTOR_MAX;
        }else if(MOTOR_PW < MOTOR_MIN){
            MOTOR_PW = MOTOR_MIN;
        }
        PCA0CP2 = 0xFFFF - MOTOR_PW;
    }
}

void PCA_ISR(void){
    if(CF){     // If a PCA overflow has occurred
        CF = 0;
        PCA0 = 28672;   // Preload the counter for 20 ms operation

    // Increment *all* our counters
        r_count++;
        p_count++;
        counts++;

        // Add flag setting, e.g.:
        if(r_count > 4 ){
            //stuff
            r_count = 0;
            new_range =1;
        }
        if(p_count >25){

            p_count =0;
            new_print =1;
        }
        }

    PCA0CN = 0x40;      // Clear all interrupts (including CF), leave CR=1
}
