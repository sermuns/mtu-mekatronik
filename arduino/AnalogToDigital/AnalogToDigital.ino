#define INPUT_PIN A0
#define OUTPUT_PIN 13

void setup() {
//	Serial.begin(9600);
	pinMode(INPUT_PIN, INPUT);
	pinMode(OUTPUT_PIN, OUTPUT);
}

void loop() {
	const int sensorValue = analogRead(INPUT_PIN);
//	Serial.println(sensorValue);
	digitalWrite(OUTPUT_PIN, sensorValue > 512 ? HIGH : LOW);
}
