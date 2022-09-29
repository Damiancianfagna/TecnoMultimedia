 class Principal{
 int cambiar;
   
 
 
 
 Bruja sprite;
 Fondo px; 
 
  
  Principal(){
  sprite=new Bruja();
  px = new Fondo();
 
 } 

    
  void Obra(){ 
 
  px.escenarios();
  px.ciclar();
  sprite.display();
 


}





}
