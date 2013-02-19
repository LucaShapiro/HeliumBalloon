// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Balloon {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  float topspeed;

  Balloon() {
    location = new PVector(width/2, height);
    velocity = new PVector(0, random(0, 1));
    acceleration = new PVector(0, 0);
    mass = 80;
    topspeed = 1;
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }

  void update() {
    //location.sub(velocity);
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.sub(velocity);
    acceleration.mult(0);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location.x, location.y, 48, 48);
  }

  void checkEdges() {
    if ((location.x > width) || (location.x < 0)) {
      velocity.x = velocity.x * -1;
    }
    if ((location.y > height) || (location.y < 0)) {
      velocity.y = velocity.y * -1;
    }
  }
}

