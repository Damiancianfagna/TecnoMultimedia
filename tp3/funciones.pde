//movimiento de personaje

void movimientoPJ(){
  if (keyPressed){
   if (key=='d')
   x1=x1+5;
   
   if (keyPressed){
   if (key=='a')
   x1=x1-5;
 
x1 = constrain(x1,0,705);
    } 
  }  
  
  
  //caída de los cuchillos
  if (frameCount%6==0) {
  cuchilloGira++;
  if (cuchilloGira == cuchillo.length){
    cuchilloGira = 0;}}}
void caidaCuchillo(){
   if (cposy>height) {
    cposy=-50;
    cposx=random(1,750);
    contadorPerdidos++;
     
  }
 cposy+=4;
 
 //CONTACTO AGARRAR CUCHILLOS
 }
void contacto(){
  if (cposy < y1 + 100 && cposy > y1 - 100 && cposx < x1 + 100 && cposx > x1 - 100){
    cposy = -50;
    contadorAgarrados++;
    cposx = random (1,750);
    estado = "jugando";
}
}
void ganar(){
  if (contadorAgarrados>=5)
  estado="ganar";
}
void perdiste(){
if (contadorPerdidos>=1)

estado="perdiste";
}
//BOTÓN JUGAR
void boton(){
stroke(255, 255, 255);
 strokeWeight(3);
 noFill();
 rect(360, 380, 80, 40);
 if  (mouseX > 360 && mouseY < 360 + 80 && mouseY > 380 && mouseY< 380 + 40){
 if (mousePressed){
 estado = "instrucciones";
}
}}
//REINICIO
 void reinicio (){
   if (key== 'r'){
  estado = "inicio";
  contadorPerdidos=0;
  contadorAgarrados=0;
  x1=0;
  y1=565;
  
 
}
}
