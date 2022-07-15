// Damián Cianfagna (91495/9)
// video explicación: https://www.youtube.com/watch?v=SUYFvdKZjuw&ab_channel=DamianCianfagna

//Variables 
PImage personaje,  pantalla;
PImage[] cuchillo = new PImage[4];
String estado;
float x1,y1,cposx,cposy;
int contadorPerdidos, contadorAgarrados;
int cuchilloGira = 0;

void setup (){
size (800, 800);
background (0);

//Imagenes
personaje = loadImage ("personaje.png");
pantalla = loadImage ("pantalla.png");
for (int i = 0; i< cuchillo.length; i++){
  cuchillo [i]= loadImage ("cuchillo"+i+".png");
}

contadorPerdidos=0;
contadorAgarrados=0;

estado = "inicio";

x1=0;
y1=565;


}

void draw (){
 
 
 
//PANTALLA INICIO
if (estado.equals("inicio")) {
background(0);
textAlign( CENTER, CENTER );
textSize( 40 );
text("KNIFE CAVE",400,300);
textSize( 24 );
text("JUGAR",400,400);
boton(360, 380, 80, 40);


//PANTALLA INSTRUCCIONES
}
else if (estado.equals("instrucciones")){
  background(0);
  textSize( 35 );
  textAlign( CENTER, CENTER );
  text("Caerán cuchillos del cielo",400,100);
  textSize( 24 );
  text("-Agarrá 5 para ganar",400,200);
  text("-Si se te cae 1 perdés",400,300);
  text("a= moverse a la izquierda",400,450); 
  text("d= moverse a la derecha",400,500); 
  text("Presiona espacio para comenzar",400,700);
  }
  //PANTALLA JUEGO
else if (estado.equals("jugando")) {
 image (pantalla,0,0);
 image (cuchillo[cuchilloGira], cposx,cposy);
 image (personaje, x1 ,y1);
  contacto();  
  movimientoPJ();
  caidaCuchillo(-50);
  ganar();
  perdiste();
  } 
  //PANTALLA GANASTE
else if (estado.equals("ganar")){
 background (0,255,0);
  textSize( 40 );
text("GANASTE!!",400,300);
//REINICIO
text("presione r para reiniciar",400,500);
reinicio ();
  //PANTALLA PERDISTE
 }
else if (estado.equals("perdiste")){
background (255,0,0);
  textSize( 40 );
text("PERDÍSTE ;(",400,300);
//REINICIO
text("presione r para reiniciar",400,500);
reinicio ();
} 
}
//INTERACCION ESPACIO
void keyPressed() {
if ( estado.equals("instrucciones") && key == ' ' ) {
    estado = "jugando";
 }
 }
 
