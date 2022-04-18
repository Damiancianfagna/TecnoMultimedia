//"tp0 Figuras Damián Cianfagna (N de legajo:91495/9) Comisión 1  José Luis Bugiolachi"
void setup(){
  size(500,500);
  
  }
  
  void draw(){
    //cielo
 background(39, 203, 232);
    strokeWeight(5);
//estructura casa
 fill(125,32,32);
  rect(150,250,200,200);
    //techo
  fill(32,61,32);
  triangle(250,150,125,275,375,275);
    //puerta
  fill(92, 44, 29);
 rect(230,400,30,50);
  //ventana izquierda
  fill(48, 119, 207);
  rect(180,325,35,35);
  //ventana derecha
  rect(275,325,35,35);
  //picaporte
  strokeWeight(2);
  fill(189, 186, 55);
  ellipse(252,430,5,5);
  //suelo
  strokeWeight(2);
 fill(51, 176, 16);
  rect(-3,450,506,53);


}  
