float objX,objY;
float disX, disY;

float delay = 20.00;

PImage backimage;

void setup(){
  backimage = loadImage("image/width100.png");
  size(800, 600);
  noCursor();
  objX = mouseX;
  objY = mouseY;
  
}

void draw(){
  disX = mouseX - objX;
  disY = mouseY - objY;

  objX = objX + disX/delay;    
  objY = objY + disY/delay;
  
  //background(200,200,200);
  background(backimage);
  ellipse(objX,objY,25,25);  
}
