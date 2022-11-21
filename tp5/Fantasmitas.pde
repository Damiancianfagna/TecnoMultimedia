class Fantasmas{

 PImage bf;
 float xf,yf;
 
  Fantasmas(float xf){
  bf = loadImage("ghost.png");
  this.xf= xf;
  yf = int(random(0,500));
}
  
  void spritef(){
  image(bf,xf,yf);
  xf =xf-2;
   
}

void fgeneral(){
 spritef();
 }}
