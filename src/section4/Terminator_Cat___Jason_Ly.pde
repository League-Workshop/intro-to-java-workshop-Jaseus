PImage catPic;
int xPos1 = 379;
int yPos1 = 278;
int xPos2 = 561;
int yPos2 = 336;
int acceleration = 3;
int length = 800;
int width = 600;

void setup(){
 size(800,600); 
 catPic = loadImage("catPic.jpg");
   catPic.resize(800,600);
  background(catPic);

}

void draw(){
    if(mousePressed){

println("Mouse’s x-position: " + mouseX + "\n" + "Mouse’s y-position: " + mouseY + "\n");}
  
  noStroke(); 
  if(keyPressed){
  fill(255,0,0);
   ellipse(xPos1,yPos1,25,25);
  ellipse(xPos2,yPos2,25,25);
  }
 
}

void keyPressed(){
  
  if(keyPressed){
    yPos1+= 2*acceleration;
    xPos1+= -2*acceleration;
    
    yPos2+= 2*acceleration;
    xPos2+= -2*acceleration;
  }
  
  if(xPos1<0){
   image(catPic,0,0,800,600); 
   xPos1 = 379;
   yPos1 = 278;
   xPos2 = 561;
   yPos2 = 336;
  }
}
