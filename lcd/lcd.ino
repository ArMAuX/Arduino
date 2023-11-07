#include <LiquidCrystal_I2C.h>

LiquidCrystal_I2C lcd(0x27, 2, 1, 0, 4, 5, 6, 7, 3, POSITIVE);  // Set the I2C address and LCD dimensions

// Binary heart map definition
uint8_t heart[8] = {
  
  0b10101,
  0b01010,
  0b10001,
  0b01010,
  0b10101,
  0b00100,
  0b01010,
  0b10001
};
uint8_t char1[8]={

  0b00000,
0b10000,
0b00000,
0b11000,
0b00000,
0b01100,
0b11100,
0b00110

};
uint8_t char2[8]={

0b00000,
0b00000,
0b00000,
0b00000,
0b00000,
0b00000,
0b00000,
0b00000


};
uint8_t char3[8]={
0b00000,
0b00000,
0b00000,
0b00000,
0b00000,
0b00000,
0b00000,
0b01000



};
uint8_t char4[8]={

0b00011,
0b00000,
0b00001,
0b00000,
0b00000,
0b00000,
0b00000,
0b00010


};
uint8_t char5[8]={

0b00000,
0b00000,
0b11000,
0b00000,
0b01100,
0b00000,
0b00111,
0b11110

};
uint8_t char6[8]={

0b00000,
0b00000,
0b00000,
0b00000,
0b00000,
0b00000,
0b00000,
0b10000

};
uint8_t char7[8]={

0b00000,
0b00000,
0b00001,
0b00000,
0b00111,
0b00000,
0b01100,
0b01001

};
uint8_t char8[8]={
0b11111,
0b00000,
0b10000,
0b00000,
0b00000,
0b00000,
0b00011,
0b00000


};
uint8_t char9[8]={
0b00001,
0b00011,
0b00000,
0b00001,
0b00000,
0b00001,
0b00000,
0b00000


};
uint8_t char10[8]={

0b11111,
0b00000,
0b00000,
0b00000,
0b00000,
0b10000,
0b00000,
0b10000

};
uint8_t char11[8]={
0b11111,
0b01100,
0b00000,
0b01010,
0b00000,
0b01001,
0b00000,
0b01000


};
uint8_t char12[8]={

0b11100,
0b00110,
0b00111,
0b01010,
0b00000,
0b10010,
0b00000,
0b00010

};
uint8_t char13[8]={

0b00001,
0b10010,
0b11111,
0b10010,
0b00010,
0b11110,
0b00010,
0b10010

};
uint8_t char14[8]={

0b11000,
0b01000,
0b11111,
0b00101,
0b10001,
0b00010,
0b10011,
0b00101

};
uint8_t char15[8]={

0b11001,
0b10001,
0b10001,
0b00001,
0b10011,
0b00001,
0b00000,
0b00001

};
uint8_t char16[8]={

0b00011,
0b00000,
0b00001,
0b00000,
0b00000,
0b00000,
0b00011,
0b00000

};

void setup() {
  // initialize LCD and set up the number of columns and rows:
  lcd.begin(16, 2);

  // lcd.send()
  
  
  lcd.createChar(0,char1);
  lcd.createChar(1,char2);
  lcd.createChar(2,char3);
  lcd.createChar(3,char4);
  lcd.createChar(4,char5);
  lcd.createChar(5,char6);
  lcd.createChar(6,char7);
  lcd.createChar(7,char8);
  
  // set the cursor to the top left
  lcd.setCursor(0, 0);

  // Print a message to the lcd.
  //lcd.print("I ");
  lcd.write(byte(0));
  lcd.write(byte(1));
  lcd.write(byte(2));
  lcd.write(byte(3));
  lcd.write(byte(4));
  lcd.write(byte(5));
  lcd.write(byte(6));
  lcd.write(byte(7));
  

  
  



  

  // lcd.createChar(9,char9);
  // lcd.createChar(10,char10);
  // lcd.createChar(11,char11);
  // lcd.createChar(12,char12);
  // lcd.createChar(13,char13);
  // lcd.createChar(14,char14);
  // lcd.createChar(15,char15);
  // lcd.createChar(16,char16);


  // lcd.setCursor(8,0);
  // lcd.write(byte(9));
  // lcd.write(byte(10));
  // lcd.write(byte(11));
  // lcd.write(byte(12));
  // lcd.write(byte(13));
  // lcd.write(byte(14));
  // lcd.write(byte(15));
  
  
}

void loop() {
 
}



