class Principal {

  int cambiar, contador, contadorm, cf;
  Bruja sprite;
  Fondo px;
  Fantasmas[]f = new Fantasmas[60];
  CPantallas cp;
  Monedas[]m = new Monedas[9] ;
  String estado;
  boolean limit, limitm;
  int cantidad;
  Principal() {
    sprite=new Bruja();
    px = new Fondo();
    cp = new CPantallas();
    for (int i =0; i < f.length; i++) {
      f[i] = new Fantasmas(500 + i*200);
    }
    for (int i =0; i < m.length; i++) {
      m[i] = new Monedas(1000 + i*1000);
    }
    estado="inicio";
    contador=0;
    contadorm=0;
    limit = false;
    limitm = false;
  }

 //colisión fantasmas
  void colision() {
    for (int i =0; i < f.length; i++) { 

      if (sprite.bruy < f[i].yf + 20 && sprite.bruy > f[i].yf - 20 && sprite.brux < f[i].xf + 20 && sprite.brux>  f[i].xf  - 20) {
        f[i].yf=7000;    
        limit = true;
      }
      if (limit) {
        this.contador ++;
        limit = false;
      }
    }
  }
  // colisión moneda
  void contactom() {
    for (int i =0; i < m.length; i++) {
      if (sprite.bruy < m[i].yd + 40 && sprite.bruy > m[i].yd - 40 && sprite.brux < m[i].xd + 40 && sprite.brux>  m[i].xd  - 40) {
        m[i].yd =7000;
        limitm = true;
      }
      if (limitm) {
        this.contadorm ++;
        limitm = false;
      }
    }
  }
//HUD para puntajes
  void puntaje() {
    pushStyle();
    textSize(25);
    textMode(CENTER);
    text(contador,20,50);
    text(contadorm, 80, 50);
    popStyle();
     for (int i =0; i < f.length; i++) {
    image (f[i].bf, 30,15,50,50); 
  }
     for (int i =0; i < m.length; i++) {
    image (m[i].md,100,28,25,25);
  }
  }



  void ganaste() {
    if (this.contadorm == 3) {
      estado = "ganar";
    }
  }

  void perdiste() {
    if (this.contador == 3) {
      estado="perder";
    }
  }

  void reiniciar() {
    estado="inicio";
    contador=0;
    contadorm=0;
    limit = false;
    limitm = false;
    cf = 0;  
  }
//logica de estados
  void estados() {
    if (estado.equals("inicio")) {
      cp.p1();  
      if (keyPressed) {
        if (key == 'r') {
          estado="instrucciones";
        }
      }
    } else if (estado.equals("instrucciones")) {
      cp.p2(); 
      if (keyPressed) {
        if (key == 'm') {
          estado="juego";
        }
      }
    } else if (estado.equals("juego")) {
      px.escenarios();
      px.ciclar();
      sprite.display();
      for (int i =0; i < f.length; i++) {
        f[i].spritef();
      }
      for (int i =0; i < m.length; i++) {
        m[i].sprited();
      }
      colision();
      perdiste();
      contactom();
      ganaste();
      puntaje();
    } else if (estado.equals("perder")) { 
      cp.p3();

      if (keyPressed) {
        if (key == 'k') {
          reiniciar();
          estado="inicio";
        }
      }
    } else if (estado.equals("ganar")) {
      cp.p4(); 
      if (keyPressed) {
        if (key == 'k') {
          reiniciar(); 
          estado="inicio";
        }
      }
    }
  }

  void Obra() { 
    estados();
  }
}
