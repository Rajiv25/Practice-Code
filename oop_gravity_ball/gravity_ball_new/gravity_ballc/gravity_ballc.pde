
GravityBall[] ball = new GravityBall[1000];


void setup() {
  size(1200, 800);
  
  for (int i = 0; i < ball.length; i++) {
    ball[i] = new GravityBall();
   
  }
}

void draw() {
  background(0);
  
  colorMode(HSB, 360, 100, 100, 100);
  
  for (int i = 0; i < ball.length; i++) {
    ball[i].display();
    ball[i].move();
    ball[i].bounce();
  }
}
class GravityBall {
  PVector loc, vel, acc;
  float size, hue, sat, bright;
 
  GravityBall() {
    
    size =20;
    loc = new PVector(random(size, width-size), random(height/2));
    vel = new PVector(1, 1);
    acc = new PVector(0, .1);
    hue = random(360);
    sat = 100;
    bright =100;
  }
 

  void display() {
    fill(hue, sat, bright);
    ellipse(loc.x, loc.y, size, size);
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
  }

  void bounce() {
    if (loc.y > height - size/2) {
      loc.y = height - size/2;
      vel.y = -(vel.y);
    }
  }
}

