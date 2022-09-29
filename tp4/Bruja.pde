class Bruja {
  PImage [] brujita;
  int brujitamouse;
  
  //carga de fotos de la bruja
  Bruja() {
    brujita = new PImage[3];
    for (int i=0; i<brujita.length; i++) {
      brujita[i] = loadImage("br"+i+".png");
      brujita[i].resize(94,94);
    }
      //usar el mouse para mover a la bruja
  }
  void Mover() {
    image (brujita[brujitamouse], mouseX, mouseY);
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
