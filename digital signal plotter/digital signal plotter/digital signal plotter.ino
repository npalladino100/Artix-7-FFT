int digitalValue = 0;// variable to store the analog value
const int numPins = 12;
int pins[] = {22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44};


void setup() {
	for (int k=0; k<numPins; k++)
		pinMode(pins[k], INPUT);
  Serial.begin(9600);
}

void loop() {

  int bitValue[] = {1,2,4,8,16,32,64,128,256,512,1024,2048};  // bit position decimal equivalents
  for(int i = 0; i < numPins; i++)  // cycle through all the pins
		{
			if(digitalRead(pins[i]) == HIGH)  // because all the bits are pre-loaded with zeros, only need to do something when we need to flip a bit high
				{
					digitalValue = digitalValue + bitValue[i];  // adding the bit position decimal equivalent flips that bit position
				}
		}

	Serial.println(digitalValue);
	
}
