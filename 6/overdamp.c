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
void read_ranger(void);             // Function to read the ranger and start a ping
void read_compass(void);            // Function to read the compass heading
void set_servoPW(void);
void set_motorPW(void);

signed int MOTOR_NEUT = 2765;       // Neutral              1.5 ms
signed int MOTOR_MAX = 3502;        // Full Forward         1.9 ms
signed int MOTOR_MIN = 2027;        // Full Reverse         1.1 ms
signed int MOTOR_PW;                // Current PW

signed int SERVO_CENTER = 2765;     // Centered             1.5 ms
signed int SERVO_RIGHT = 3871;      // All the way right    2.1 ms 3871
signed int SERVO_LEFT = 1659;       // All the way left     0.9 ms  1659
signed int SERVO_PW;                // Current PW

unsigned char counts = 0;           // PCA overflow counter
unsigned char new_range = 0;        // Flag denoting if a new range value should be retrieved (set in interrupt)
unsigned char new_heading = 0;      // Flag denoting if a new heading value should be retrieved (set in interrupt)
unsigned char new_print = 0;        // Flag denoting that we can print (set in interrupt)
unsigned char new_change = 0;
unsigned int r_count = 0;          // Counter to count 80 ms for ranger delay
unsigned char h_count = 0;          // Counter to count 40 ms for compass delay
unsigned char p_count = 0;          // Counter to count ?? ms for print delay
signed int heading = 0;             // Variable to hold compass heading value
signed int previous_heading = 0 ;
signed int previous_PW = 0 ;
signed int previous_error = 0;
unsigned int range = 0;             // Variable to hold ranger distance value
unsigned int flag = 0;

signed int des_heading = 135;         // Desired heading
signed int heading_error = 0;       // Error calculation
signed int range_error = 0;

float kp1 = 60;
float kp2 = 5;
float kd1 = 500;
float kd2 = 2;
void main(void){

    Sys_Init();
    putchar(0);
    Port_Init();
    PCA_Init();
    Interrupt_Init();
    XBR_Init();
    SMB_Init();

    // Read ranger once to trigger ping.
    read_ranger();
    // Initialize the drive motor to neutral for 1 s
    // Set motor pulsewidth to neutral

    while(counts <= 50){ // Wait 1 second
        Sim_Update();   // Called in all loops!
        MOTOR_PW = MOTOR_NEUT;
        PCA0CP2 = 0xFFFF - MOTOR_PW;
    }

    // Clear the flag counter variables to prevent a double read
    flag = 0 ;

    r_count = h_count = p_count = 0;
    new_range = new_heading = new_print = 0;

    // Print data headers


    // Run program loop
        // while(1) loop may or may not be needed, depending on how it's implemented.
    srand(1);
    while(1){
        Sim_Update();
        if(new_change){
            new_change = 0;
            des_heading = rand()%4;
            des_heading *= 90;
            printf("%d",des_heading);

        }
        // This stuff below is close to what a team should have had at the end of Lab3-3 (with pieces missing)
        // This will likely need to be moved around to fit into Lab 4 in your algorithm
        if (new_heading){
            // Get heading and act upon it
            new_heading = 0;
            read_compass();


            heading_error = des_heading - heading;  // 135 is the desired heading

            if (heading_error > 180){
            heading_error -= 360;
            }
            if(heading_error< -180){
                heading_error += 360;
            }





            SERVO_PW = SERVO_CENTER  + kp1/kp2 * (heading_error)  + kd1/kd2 * (heading_error - previous_error)  ;



            previous_heading = heading;
            previous_PW = SERVO_PW;
            previous_error = heading_error;
            set_servoPW();


        }
        if (new_print){
            // Print import stuff
            printf("%4d %4d  \r\n", heading , SERVO_PW );
            new_print = 0;
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

void read_compass(void){
    unsigned char addr = 0xC0;          // the address of the sensor, 0xC0 for the compass
    unsigned char Data[2];              // Data is an array with a length of 2
    i2c_read_data(addr, 2, Data, 2);                        // read two byte, starting at reg 2
    heading =(((unsigned int)Data[0] << 8) | Data[1]);      // combine the two values
    heading = heading * 0.1;                    //heading has units of 1/10 of a degree
}

void read_ranger(void){
    unsigned char addr = 0xE0;          // the address of the ranger is 0xE0
    unsigned char Data[2];              // Data is an array with length of 2
    i2c_read_data(addr, 2, Data, 2);   //read two bytes, starting at reg 2
    range = (((unsigned int)Data[0] << 8) | Data[1]);       // combine the two values
    // Tell the ranger to trigger a ping

    Data[0] = 0x51 ;                     // want to write 0x51 to reg 0 (ping in cm)
    i2c_write_data(0xE0, 0, Data, 1);    // write data byte to ranger

}



void set_servoPW(){

        if(SERVO_PW > SERVO_RIGHT){
            SERVO_PW = SERVO_RIGHT;
        }else if(SERVO_PW < SERVO_LEFT){
            SERVO_PW = SERVO_LEFT;
        }

    PCA0CP2 = 0xFFFF - SERVO_PW;
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

        counts++;       // Increment *all* our counters
        r_count++;
        h_count++;
        p_count++;

        // Add flag setting, e.g.:
        if(r_count > 1000 ){
            //stuff
            r_count = 0;
            new_change =1;
        }
        if (h_count > 2){

            h_count = 0;
            new_heading = 1;
        }
        if(p_count >25){

            p_count =0;
            new_print =1;
        }

    }
    PCA0CN = 0x40;      // Clear all interrupts (including CF), leave CR=1
}
