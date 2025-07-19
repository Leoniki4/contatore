#include <Wire.h>
#include <LiquidCrystal_I2C.h>

const int bottone = 11;
const int bottonereset = 10;

int numero_pressate = 0;
bool precedenteStatoBottone = HIGH;  
bool precedenteStatoReset = HIGH;    
unsigned long ultimoTempoPress = 0;  

LiquidCrystal_I2C schermo(0x27, 16, 2);

void setup() {
  pinMode(bottone, INPUT_PULLUP);
  pinMode(bottonereset, INPUT_PULLUP);

  schermo.init();
  schermo.backlight();
  schermo.setCursor(0, 0);
  schermo.print("Contatore:");
}

void loop() {
  bool statoBottone = digitalRead(bottone);
  bool statoReset = digitalRead(bottonereset);
  
  if (statoBottone == LOW && precedenteStatoBottone == HIGH && millis() - ultimoTempoPress > 200) {
    numero_pressate++;
    schermo.setCursor(0, 1);
    schermo.print("                ");  
    schermo.setCursor(0, 1);
    schermo.print(numero_pressate);
    ultimoTempoPress = millis();
  }
  precedenteStatoBottone = statoBottone;
  
  if (statoReset == LOW && precedenteStatoReset == HIGH) {
    numero_pressate = 0;
    schermo.setCursor(0, 1);
    schermo.print("                ");
    schermo.setCursor(0, 1);
    schermo.print(numero_pressate);
    delay(200);  
  }
  precedenteStatoReset = statoReset;
}
