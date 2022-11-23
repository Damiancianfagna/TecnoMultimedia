

//DAMIÁN CIANFAGNA (91495/9)
 
 //https://youtu.be/m0uhAmzhNOM

//carga de sonido
import processing.sound.*;
SoundFile song; 

Principal a;

void setup() {
  size(800, 600);
   song = new SoundFile(this , "musica.mp3");
   song.play();
   a = new Principal();
   noCursor();
 
}

void draw() {
  background(200);
  a.Obra();
}
