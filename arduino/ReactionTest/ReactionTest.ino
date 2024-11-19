#define BTN_PIN 12

void setup() {
  Serial.begin(9600);
pinMode(BTN_PIN, INPUT);
pinMode(13, OUTPUT);
}

void loop() {
digitalWrite(13, HIGH);
while (digitalRead(BTN_PIN) == LOW) {} // V¨anta tills knapp trycks
digitalWrite(13, LOW);
Serial.println("Tryck s˚a fort du ser lampan lysa!");
delay(random(1000,5000)); // V¨anta slumpm¨assigt mellan 1-5 sekunder
digitalWrite(13, HIGH);
Serial.println("Nu!!");
int millisBefore = millis();
while (digitalRead(BTN_PIN) == LOW) {} // V¨anta tills knapp trycks
digitalWrite(13, LOW);
int reactionTime = millis() - millisBefore; // R¨akna ut reaktionstid
Serial.print("Din reaktionstid: ");
Serial.print(reactionTime);
Serial.println(" millisekunder");
delay(1000); // V¨anta tills man kan b¨orja reaktionstestet igen
}
