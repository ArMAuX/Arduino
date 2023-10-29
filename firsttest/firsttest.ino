#include<Servo.h>

const int xPin = A0; // Analog pin for X-axis
const int yPin = A1; // Analog pin for Y-axis

Servo myServo;
int pos=0;

int Volt=7;


void setup() {
myServo.attach(9);  
pinMode(Volt,OUTPUT);
}

void loop() {
  digitalWrite(Volt,HIGH);
  // Read the analog values of X and Y axes
  int xValue = analogRead(xPin);
  int yValue = analogRead(yPin);
  
  myServo.write(90);


  if(xValue>700)
  {
    myServo.write(180);
    delay(500);

  }


  if(xValue<200)
  {
    myServo.write(0);
    delay(500);
    
  }
  

  delay(1000); // Optional delay to control the data output rate
}
