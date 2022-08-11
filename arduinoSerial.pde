// works with prog1.ino

import processing.serial.*;

Serial port;
int val;

void setup(){
  size(400, 400);
  String arduinoPort = Serial.list()[0];
  port = new Serial(this, arduinoPort, 9600);
}

void draw(){
  frameRate(15);
  if (port.available()>0){
    val = port.read();
    println(val);
  }
  port.clear();
  background(0);
  circle(200, 200, val*10);
}

  
