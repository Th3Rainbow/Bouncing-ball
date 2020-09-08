float rectX = 200;
float rectY = 200;

float ellW = 10;
float elX = random(110,200);
float elY = random(110,200);

float length = 200;

float shrink = 0.20;
boolean turnX = false;
boolean turnY = false;
float speedY = 1.5;
float speedX = 1.9;

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
  
  if(elX - ellW/2 <= border){
    speedX = Math.abs(speedX);
    
  }
  if(elX + ellW/2 >= 400-border){
    speedX = -Math.abs(speedX);
  }
    
  if(elY - ellW/2 <= border ){
    speedY = Math.abs(speedY); 
  }
  if(elY + ellW/2 >= 400-border){
    speedY = -Math.abs(speedY);
  }
}
