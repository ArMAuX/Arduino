

uint16_t servoX = A0;
uint16_t servoY =A1;

uint16_t lamp= 7;


void setup() {
  // put your setup code here, to run once:
  pinMode(servoX,OUTPUT);
  pinMode(servoY,OUTPUT);

  pinMode(lamp,INPUT);


  Serial.begin(1000000);
  
}

void loop() {
  

  if(analogRead(servoX)>=700)
  {
    digitalWrite(lamp,HIGH);
    delay(1000);
  }


  

  Serial.print(analogRead(servoX));
  Serial.print(analogRead(servoY));
  Serial.print("\t");
  Serial.print("\n");
  
  
  delay(50);

}
