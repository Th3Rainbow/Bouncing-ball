float rectX = 200;
float rectY = 200;

float ellW = 10;
float elX = 175;
float elY = 110;

float length = 200;

float shrink = 0.20;
boolean turnX = false;
boolean turnY = false;
float speedY = 1;
float speedX = 1;

float border;

void setup(){
  size(400, 400);
  frameRate(120);
}

void draw(){
  background(255,255,255);
  rectMode(CENTER);
  rect(rectX, rectY, length, length);
  fill(0,0,0);
  ellipse(elX,elY,ellW,ellW);
  noFill();
  
  border = Math.abs((400/2) - (length/2));
  
  elX = elX + speedX;
  elY = elY + speedY;
  
  length = length  -shrink;
  
  if(elX - ellW/2 <= border || elX + ellW/2 >= 400-border){
    turnX = true;
    
  }else if(elY - ellW/2 <= border || elY + ellW/2 >= 400-border){
    turnY = true;
  }
  
  
  if(turnX == true){
    speedX = -speedX;
    turnX = false;
  }
  
  if(turnY == true){
      speedY = -speedY;
      turnY = false;
  }
  if(length <= 35){
    shrink = 0;
  }
  
}
  
 
