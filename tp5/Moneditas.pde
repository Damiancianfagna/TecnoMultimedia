class Monedas{

 PImage md;
 float xd,yd;
 
  Monedas(float xd){
  md = loadImage("md.png");
  this.xd= xd;
  yd = int(random(0,500));
}
  
  void sprited(){
  image(md,xd,yd);
  xd =xd-2;
    
}

void dgeneral(){
 sprited();
 }}
