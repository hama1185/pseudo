float objX,objY;
float disX, disY;

float delay = 20.00;

void setup(){
  size(800,600);
  noCursor();
  objX = mouseX;
  objY = mouseY;
}

void draw(){
  disX = mouseX - objX;
  disY = mouseY - objY;

  objX = objX + disX/delay;    
  objY = objY + disY/delay;
  //ellipse(mouseX,mouseY,25,25);
  background(200,200,200);
  ellipse(objX,objY,25,25);
  
}
