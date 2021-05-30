int forward = 3;
int reverse = 3;
int right = 6;
int left = 9 ;

void go_forward()
{
  analogWrite(forward, 250); // turn forward motor on
  analogWrite(reverse, 0); // turn revers motor off
}
void go_reverse()
{
  analogWrite(reverse, 2); // turn reverse motor on
  analogWrite(forward, 0); // turn forward notor off
}
void stop_car()
{
  digitalWrite(reverse, LOW); // turn revers motor off
  digitalWrite(forward, LOW); // turn forward motor off
  digitalWrite(left, LOW);
  digitalWrite(right, LOW);
}
void go_left()
{
  digitalWrite(left, HIGH); // turn left motor on
  digitalWrite(right, LOW); // turn right motor off
}
void go_right()
{
  digitalWrite(right, HIGH); // turn right motor on
  digitalWrite(left, LOW); // tune left motor off
}
//
void testPinConnection (int pinNumber) {
  Serial.write("turn on pinNumber \n");
  digitalWrite(pinNumber, HIGH);
  delay(10000);
  digitalWrite(pinNumber, LOW);
  Serial.write("turn off pinNumber \n");
}

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(forward, OUTPUT);
  pinMode(reverse, OUTPUT);
  pinMode(right, OUTPUT);
  pinMode(left, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  go_forward();
  delay(5000);
  go_reverse();
  delay(5000);
}
