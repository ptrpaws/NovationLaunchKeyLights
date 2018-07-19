import themidibus.*;
import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.io.IOException;
import java.awt.event.InputEvent;

MidiBus myBus;
  int j;

void setup() {
  fullScreen();
  background(0);
  myBus = new MidiBus(this, "Launchkey MIDI", "Launchkey InControl");
}

void draw() {
  for (int i = 36; i <= 51; i = i+1) {
    myBus.sendNoteOn(16, i, j%127);
  }
  delay(1000);
  j++;
}

void noteOn(int channel, int pitch, int velocity) {
  
  if(channel == 9){
  int channelSend = 16;
  myBus.sendNoteOn(channelSend, pitch, j%127);
  }
}


void noteOff(int channel, int pitch, int velocity) {

  if(channel == 9){
  int channelSend = 16;
  myBus.sendNoteOn(channelSend, pitch, j%127);
  }
}

void delay(int time) {
  int current = millis();
  while (millis () < current+time) Thread.yield();
}
