#include <Servo.h>

Servo myServo;

int pos =0;


void setup() {
  // put your setup code here, to run once:
  myServo.attach(9);
 
}

void loop() {
  
/*
  for(pos=0;pos>=180;pos+=1){

    myServo.write(pos);
    delay(15);

   }
   for(pos=180;pos>=0;pos-=1){

    myServo.write(pos);
    delay(15);

   }
  // put your main code here, to run repeatedly:
*/


myServo.write(0);

delay(500);

myServo.write(90);

delay(500);


}
