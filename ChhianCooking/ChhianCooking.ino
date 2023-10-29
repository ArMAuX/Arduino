#include <Servo.h>
Servo maxi;


void setup() {
  // put your setup code here, to run once:
  maxi.attach(A5);

}
void loop() {

  // put your main code here, to run repeatedly:

  int joystick_xVal = analogRead(A0);

  int servo_Pos = map(joystick_xVal,0,1023,0,180);
  int yVal = analogRead(A1);

  maxi.write(servo_Pos);  

  delay(10);




  
}

