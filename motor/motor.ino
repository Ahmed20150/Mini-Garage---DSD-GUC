/* FSR testing sketch. 
 
Connect one end of FSR to 5V, the other end to Analog 0.
Then connect one end of a 10K resistor from Analog 0 to ground
Connect LED from pin 11 through a resistor to ground 
 
For more information see www.ladyada.net/learn/sensors/fsr.html */
 
int fsrAnalogPin = 0; // FSR is connected to analog 0
int gatePin = 11;      // connect Red LED to pin 11 (PWM pin)
int fsrReading;      // the analog reading from the FSR resistor divider
bool carPresent = 0;

 
void setup(void) {
  Serial.begin(9600);   // We'll send debugging information via the Serial monitor
  pinMode(gatePin, OUTPUT);
}
 
void loop(void) {
  fsrReading = analogRead(fsrAnalogPin);
  Serial.print("Analog reading = ");
  Serial.println(fsrReading);

  if (fsrReading > 50 && carPresent){
    

  }else if (fsrReading > 50 && !carPresent){

    digitalWrite(gatePin,HIGH);
    carPresent=1;

  }else{
    delay(1000);
    digitalWrite(gatePin,LOW);
    carPresent=0;
  }
 
  delay(100);
}