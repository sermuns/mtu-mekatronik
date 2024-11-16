#define INPUT_PIN A0

char buffer[50];
unsigned int analogValue;

void setup() {
	Serial.begin(115200);
	pinMode(INPUT_PIN, INPUT);
}

void loop() {
  delay(50);
  analogValue = analogRead(INPUT_PIN);
  float millivolts = analogValue * (5000.0 / 1023.0);

  Serial.print('$');
  Serial.print(millivolts);
  Serial.println(';');
}
