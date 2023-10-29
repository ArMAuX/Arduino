#include<Servo.h>

const int xPin = A0;
const int yPin = A1;

Servo myServo;
int pos=0;

int VOLT=2;

void setup() {
  // put your setup code here, to run once:
  myServo.attach(9);

  pinMode(VOLT,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:

  int xValue = analogRead(xPin);
  int yValue = analogRead(yPin);
  if(xValue>400){
    for(pos=0;pos>=180;pos+=1){

    myServo.write(pos);
    delay(15);

   }
  

  }
  delay(1000);
}
