class Fondo {
  Fondo px; 
  PImage [] pixelarts = new PImage [5];
  int cambiar;
  int xpart;

 
   //carga de los fondos
  Fondo() {
    for (int i=0; i<pixelarts.length; i++) {
    pixelarts[i]=loadImage("f"+i+".png");
     }
     }

   //animación de los escenarios
  void escenarios() {
    image (pixelarts[cambiar], xpart, 0 );
    xpart--;
    if (xpart<= -260){
    xpart=0;
    } 
    }
    
   //cambiar escenarios 
    void ciclar() {
   if (frameCount%5==0) {
  if (keyPressed){
  if (keyCode == UP){
  cambiar++;
  if( cambiar == 5 ){
      cambiar = 0;
      }
 }
 }
 
 if (keyPressed){
 if (keyCode==DOWN){
  cambiar--;
   if( cambiar == -1 ){
      cambiar = 0;
      }
      }
}
}
}
 }   
