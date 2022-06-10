//https://www.youtube.com/watch?v=Zw3ieGxrdKw
int cant = 7;
int tam1; 
int posX;
int color1;

void setup() {
  
  size (700, 400);
  tam1 = width/cant/2;
  posX = width/cant/2;
  color1=255;
}

void draw () {

  background(0);
  for (int x=0; x<cant*2; x++) {
    if (x%2 == 0) {
      fill(color1);
    } else {
      fill(0);
    }
    stroke(0);
    strokeWeight(1);
    rect(x*posX, 0, tam1, tam1);
    rect(x*posX+15, 50, tam1, tam1);
    rect(x*posX+30, 100, tam1, tam1);
    rect(x*posX+15, 150, tam1, tam1);
    rect(x*posX, 200, tam1, tam1);
    rect(x*posX+15, 250, tam1, tam1);
    rect(x*posX+30, 300, tam1, tam1);
    rect(x*posX+15, 350, tam1, tam1);
  }
  for (int y=0; y<cant*2; y++) {
    stroke(200);
    strokeWeight(3);
    line(0, y*tam1, width, y*tam1);

}
}

void keyPressed() {
  color1=color(random(255), random(255), random(255));
}
void mouseClicked() {
  color1=255;
}
