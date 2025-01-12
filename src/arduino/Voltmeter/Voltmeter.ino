#define RED_PIN A0
#define BLACK_PIN A1

void setup() {
	Serial.begin(115200);
	pinMode(RED_PIN, INPUT);
	pinMode(BLACK_PIN, INPUT);
}

long analogValue;
float volts;

void loop() {
  delay(50);
  analogValue = analogRead(RED_PIN) - analogRead(BLACK_PIN);
  volts = analogValue * (5.0 / 1023.0);

  Serial.print('$');
  Serial.print(volts);
  Serial.println(';');
}
