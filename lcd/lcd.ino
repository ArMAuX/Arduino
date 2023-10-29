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


void setup() {
  // initialize LCD and set up the number of columns and rows:
  lcd.begin(16, 2);

  
  lcd.createChar(0, heart);

  // set the cursor to the top left
  lcd.setCursor(0, 0);

  // Print a message to the lcd.
  lcd.print("I ");
  lcd.write(byte(0)); // when calling lcd.write() '0' must be cast as a byte
  lcd.print(" Arduino! ");
  lcd.write((byte)1);

  lcd.setCursor(0,1);
  lcd.print("I ");
  lcd.write(byte(0)); // when calling lcd.write() '0' must be cast as a byte
  lcd.print(" Arduino! ");
  lcd.write((byte)1);
  
}

void loop() {
 
}


