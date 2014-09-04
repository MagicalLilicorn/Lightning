/* @pjs preload="azula.png"; */
PImage azula;

void setup(){
	azula = loadImage("azula1.png");
	size(600,500);
	strokeWeight(1.5);
	frameRate(15);
}

void draw(){
	image(azula, 0, 0, width, height);
	tint(255,126);
	for (int i = 0; i<5; i++){
		Litening poop = new Litening();
		poop.show();
	}

}

class Litening {
	int startX = 275;
	int startY = 190;
	int endX = 275;
	int endY = 190;

	void show(){
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
		startY = 190;
		endX = 275;
		endY = 190;
		noStroke();
		fill(0,0,0);
		rect(10,400,225,75);
	}
}

