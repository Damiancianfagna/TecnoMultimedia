 class Principal{
 
 int cambiar,contador,contadorm,cf;
 Bruja sprite;
 Fondo px;
 Fantasmas[]f = new Fantasmas[60];
 CPantallas cp;
 Monedas[]m = new Monedas[6] ;
 String estado;
 boolean limit,limitm;
 int cantidad;
  Principal(){
  sprite=new Bruja();
  px = new Fondo();
  cp = new CPantallas();
  for (int i =0; i < f.length; i++){
  f[i] = new Fantasmas(500 + i*200);}
  for (int i =0; i < m.length; i++){
  m[i] = new Monedas(1000 + i*1000);
  }
  estado="inicio";
  contador=0;
  contadorm=0;
  limit = false;
  limitm = false;
  cf = 0;
  
  

}
  
 
  void colision(){
  for (int i =0; i < f.length; i++){ 
  
    if (mouseY < f[i].yf + 20 && mouseY > f[i].yf - 20 && mouseX < f[i].xf + 20 && mouseX>  f[i].xf  - 20){
      f[i].yf=7000;    
      limit = true; 
}
    if (limit){
    this.contador ++;
    limit = false;
    }
}
 }
 
 void contactom(){
 for (int i =0; i < m.length; i++){
  if (mouseY < m[i].yd + 40 && mouseY > m[i].yd - 40 && mouseX < m[i].xd + 40 && mouseX>  m[i].xd  - 40){
     m[i].yd =7000;
     limitm = true;}
     if (limitm){
     this.contadorm ++;
     limitm = false;
     }
 }
 }
 
 void ganaste(){
 if (this.contadorm == 3){
 estado = "ganar";
 }
 }
 
 void perdiste(){
  if (this.contador == 3){
  estado="perder";
  }}
  
  void reiniciar(){
  estado="inicio";
  contador=0;
  contadorm=0;
  limit = false;
  limitm = false;
  cf = 0;
   }
  
 void estados(){
   if(estado.equals("inicio")){
     cp.p1();  
     if (keyPressed){
     if(key == 'r'){
     estado="instrucciones";
    }
    }
 }else if (estado.equals("instrucciones")){
   cp.p2(); 
    if (keyPressed){
   if(key == 'm'){
      estado="juego";
   }
   }
 }else if (estado.equals("juego")){
  px.escenarios();
  px.ciclar();
  sprite.display();
  for (int i =0; i < f.length; i++){
  f[i].spritef();  }
  for (int i =0; i < m.length; i++){
  m[i].sprited();  }
  colision();
  perdiste();
  contactom();
  ganaste();
 }else if (estado.equals("perder")){ 
   cp.p3();
    
  if (keyPressed){
     if(key == 'k'){
       reiniciar();
     estado="inicio";
    }
    }
 }else if (estado.equals("ganar")){
  cp.p4(); 
  if (keyPressed){
     if(key == 'k'){
       reiniciar(); 
     estado="inicio";
    }
    }
 } 
 
 }
 
  void Obra(){ 
  
  estados();


}

}
