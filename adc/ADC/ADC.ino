int sensorPin = A15;  // analog input
int digitalValue = 0;// variable to store the analog value
const int numPins = 12;
int pins[] = {22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44};


void setup() {
	for (int k=0; k<numPins; k++)
		pinMode(pins[k], OUTPUT);
  Serial.begin(9600);
}

void loop() {
  digitalValue = analogRead(sensorPin);// read the value from the analog channel
  Serial.print("digital value = ");
  Serial.print(digitalValue);        // print digital value on serial monitor
  Serial.print(" | ");


	for (int i=0; i<numPins; i++) {
    int state = bitRead(digitalValue, i);
    digitalWrite(pins[i], state); // write value to digital pins
    Serial.print(state);
  }
  Serial.println();

}
