// delay system
float objX,objY;
float disX, disY;
float delay = 1.00;

int rangeMin = 325;
int rangeMax = 475;

boolean delayFlag = true;

// image setting
PImage backimage;



void setup(){
  backimage = loadImage("image/width150.png");
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
  if(!delayFlag){
    ellipse(objX,objY,25,25);
  }
}
