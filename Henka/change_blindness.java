import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.*; 
import java.awt.image.*; 
import java.awt.event.*; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class change_blindness extends PApplet {

int[] x = new int[30];
int[] y = new int[30];
int[] w = new int[30];
int[] h = new int[30];
int[] c = new int[30];

public void setup() 
{ 
  size(400, 400, P2D);
  frameRate(20);
  
  int i;
  for(i=0;i<30;i++){
    x[i] = (int)random(350);
    y[i] = (int)random(350);
    w[i] = (int)random(50) + 50;
    h[i] = (int)random(50) + 50;
    c[i] = color(random(256),random(256),random(256));
  }  
} 

int r = 0;

public void draw(){
  background(255,255,255);
  int i;
  for(i=0;i<30;i++){
    noStroke();
    if(i == 24){
      fill(r,30,30);
      if(r < 256){
        r += 1;
      }
      else {
        strokeWeight(4);
        stroke(0);
      }
    }
    else {
      fill(c[i]);
    }
    rect(x[i],y[i],w[i],h[i]);
  }
}



  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "change_blindness" });
  }
}
