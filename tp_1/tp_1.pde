//TP 1 Damián Cianfagna

PImage portada, hyrule, p2,p3,p4;
int Variable = (-1);
String a, e, i, o, u, z;
PFont fuente1;
int postxt;
float posX, posY;

void setup(){
size (400,400);
frameRate (20);

  
textAlign(CENTER);
postxt = 100;
a= "The Legend \nOf \nZelda";
e= "Director: \nShigeru \nMishamoto";
i= "Diseño de Personajes: \n Takashi Tezuka";
o= "Desarrollo: \nYasurani  Soejima";
u= "Sonido: \nKoji \nKondo"; 
z= "presione F";
fuente1 = loadFont("fuente1.vlw");

  
println (frameCount);
portada =loadImage ("portada.jpg");
hyrule = loadImage ("hyrule.jpg");
p2 = loadImage ("p2.jpg");
p3 = loadImage ("p3.jpg");
p4 = loadImage ("p4.jpg");




}


void draw(){
textSize (30);

//PANTALLA 1
image(portada,0,0,400,400);
//PANTALLA 2
if(frameCount >= 250)
image(hyrule,0,0,400,400);
//PANTALLA 3
if(frameCount >= 450)
image(p2,0,0,400,400);
//PANTALLA 4
if(frameCount>= 650)
image (p3,0,0,400,400);
//PANTALLA 5
if(frameCount>= 850)
image (p4,0,0,400,400);

//TEXTOS CON SUS VARIABLES

//texto pantalla 1
textFont(fuente1);
fill (214,240,41);
postxt -= -1;
//if(frameCount <=postxt);
text(a,width/2, -330 + postxt);

//texto pantalla 2
if (frameCount >= 600)
textFont(fuente1);
fill(0);
postxt -= -1;
text(e,width/2, -1750 + postxt);

//texto pantalla 3
if (frameCount >= 600)
textFont(fuente1);
fill (40,170,255);
//fill (255,255,255);
postxt -= -1;
text(i,width/2, -3000 + postxt);

//texto pantalla 4
if (frameCount >= 600)
textFont(fuente1);
fill (255,255,255);

postxt -= -1;
text(o,width/2, -4500 + postxt);

//texto pantalla 5
if (frameCount >= 600)
textFont(fuente1);
fill (422,46,46);
postxt -= -1;
text(u,width/2, -5400 + postxt);


//texto pantalla 5
if (frameCount >= 600)
if (posX>=width/2)
textFont(fuente1);
fill (422,46,46);
postxt -= -1;
text(z,posX, -560);


 
 


}
