

//DAMIÁN CIANFAGNA (91495/9)
 
 //https://www.youtube.com/watch?v=Sex2UEGwWYY&ab_channel=DamianCianfagna

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
