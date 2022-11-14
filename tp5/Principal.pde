 class Principal{
 
 int cambiar,contador;
 Bruja sprite;
 Fondo px;
 Fantasmas[]f = new Fantasmas[30];
 CPantallas cp;
 String estado;
  
  Principal(){
  sprite=new Bruja();
  px = new Fondo();
  cp = new CPantallas();
  for (int i =0; i < f.length; i++){
  f[i] = new Fantasmas(500 + i*200);
  estado="inicio";
  contador=0;
}
}
 
  void colision(){
  for (int i =0; i < f.length; i++){ 
  //if (f[i].yf < mouseY + 20 && f[i].yf > mouseY - 20 && f[i].xf < mouseX + 20 && f[i].xf > mouseX - 20){
    if (mouseY < f[i].yf + 20 && mouseY > f[i].yf - 20 && mouseX < f[i].xf + 20 && mouseX>  f[i].xf  - 20){
    this.contador ++ ;}}  
 }
 
 void perdiste(){
  if (this.contador >= 28){
  estado="perder";
  }}
  
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
  colision();
  perdiste();
 }else if (estado.equals("perder")){
  cp.p3();}
 
 }
 
  void Obra(){ 
  
  estados();


}

}
