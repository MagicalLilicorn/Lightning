/* @pjs preload="azula.png"; */
int startX = 275;
int startY = 250;
int endX = 275;
int endY = 250;
PImage azula;
boolean firstTime = true;

void setup(){
	azula = loadImage("azula1.png");
	size(600,600);
	strokeWeight(1.5);

}

void background(){
	image(azula, 0, 0, width, height);
}
void draw(){
	int x = (int)random(0,150);
	while(endY > 0){
		stroke(7,63+x,110+x);
		endX = startX + ((int)(Math.random()*18-8));
		endY = startY - ((int)(Math.random()*10));
	    line(startX,startY,endX,endY);
	    drawRect();
	}
	startX = 275;
	startY = 250;
	endX = 275;
	endY = 250;
	if(firstTime == true){
		firstTime=false;
		background();
	}
	noStroke();
	fill(0,0,0);
	rect(10,500,225,75);
}
void drawRect(){
	noStroke();
    fill(70,7,7,5);
    rect(0,0,600,250);
    startX = endX;
    startY = endY;
}

