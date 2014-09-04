import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Lightning extends PApplet {

/* @pjs preload="azula.png"; */
PImage azula;

public void setup(){
	azula = loadImage("azula1.png");
	size(600,600);
	strokeWeight(1.5f);
	frameRate(15);
}

public void draw(){
	image(azula, 0, 0, width, height);
	tint(255,126);
	for (int i = 0; i<5; i++){
		Litening poop = new Litening();
		poop.show();
	}

}

class Litening {
	int startX = 275;
	int startY = 250;
	int endX = 275;
	int endY = 250;

	public void show(){
		int x = (int)random(0,150);
		while(endY > 0){
			stroke(7,63+x,110+x);
			endX = startX + ((int)(Math.random()*18-8));
			endY = startY - ((int)(Math.random()*10));
		    line(startX,startY,endX,endY);
		    startX = endX;
		    startY = endY;
		}
		startX = 275;
		startY = 250;
		endX = 275;
		endY = 250;
		noStroke();
		fill(0,0,0);
		rect(10,500,225,75);
	}
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Lightning" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
