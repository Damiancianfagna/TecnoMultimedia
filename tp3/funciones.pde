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

//CORRECCIÓN=AGREGUÉ PARAMETROS 
void caidaCuchillo(float y){

  y=cposy;
  if(y >= height){  
     contadorPerdidos++; 
   }  
   {
    cposy+=4;
  }

 
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
//BOTÓN JUGAR //CORRECCIÓN=AGREGUÉ PARAMETROS 
void boton(int p1, int p2, int p3, int p4){
stroke(255, 255, 255);
 strokeWeight(3);
 noFill();
 rect(p1, p2, p3, p4);
 //rect
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
  cposx=0;
  cposy=0;
}
}
