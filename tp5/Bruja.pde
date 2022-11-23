class Bruja {
  
  PImage [] brujita;
  int brujitamouse;
  float brux, bruy;
  //int contador;
  //carga de fotos de la bruja
 
  Bruja() {
    brujita = new PImage[3];
    for (int i=0; i<brujita.length; i++) {
      brujita[i] = loadImage("br"+i+".png");
      brujita[i].resize(94,94);
     
      //contador=0;
    }
      //usar el mouse para mover a la bruja
  }
 
  void Mover() {
     brux=mouseX;
     bruy=mouseY;
    image (brujita[brujitamouse], brux, bruy);
  }

 //animación de la bruja
  void Animacion() {
    if (frameCount%16==0) {
    brujitamouse++;
    if (brujitamouse == brujita.length) {
      brujitamouse= 0;
    }
    }
  }
  //void general
    void display() {
    Mover();
    Animacion();
    }
  }
