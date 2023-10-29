#include <Stepper.h>

#define STEPS 2038

#define Motor_RPM 6

Stepper stepper(STEPS, 8, 10, 9, 11);
//IN1=11, IN2=10, IN3=9, IN4=8
void setup() {
  // put your setup code here, to run once:
}

void loop() {
  // put your main code here, to run repeatedly:
  stepper.setSpeed(Motor_RPM);
  stepper.step(STEPS);
  delay(1000);

  stepper.setSpeed(Motor_RPM);
  stepper.step(-STEPS);
  delay(1000);

}
