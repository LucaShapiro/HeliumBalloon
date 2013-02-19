// Based on code from
// Nature of Code
// by Daniel Shiffman

Balloon balloon;

void setup() {
  size(300,300);
  balloon = new Balloon();
}

void draw() {
  background(255);
  
  float windVal = noise(4);
  
  PVector wind = new PVector(windVal, 0);
  PVector helium = new PVector(0, 7);
  
  
  balloon.update();
  balloon.checkEdges();
  balloon.display(); 
  balloon.applyForce(wind);
  balloon.applyForce(helium);
}
