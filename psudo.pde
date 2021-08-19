// delay system
float objX,objY;
float disX, disY;
float delay = 1.00;

int rangeMin = 350;
int rangeMax = 450;

boolean delayFlag = false;

// image setting
PImage backimage;



void setup(){
  backimage = loadImage("image/width100.png");
  size(800, 600);
  noCursor();
  objX = mouseX;
  objY = mouseY;
  
}

void draw(){
  if(mouseX >= rangeMin && mouseX <= rangeMax){
    delayFlag = true;
    delay = 100.0;
  }
  else{
    delayFlag = false;
    delay = 1.0;
  }
  
  
  disX = mouseX - objX;
  disY = mouseY - objY;

  objX = objX + disX/delay;    
  objY = objY + disY/delay;
  
  background(backimage);
  ellipse(objX,objY,25,25);  
}
