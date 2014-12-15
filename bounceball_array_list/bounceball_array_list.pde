
ArrayList<Ball> balls = new ArrayList<Ball>();
int maxballs=10000;

void setup() {
  size(1200, 800);
  textSize(50);
  background(0);
}

void draw() {
 
  background(0);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i = 0; i < balls.size (); i++) {
    Ball b = balls.get(i);    
    b.display();
    b.move();
    b.wallBounce();
    for(int j =0; j<balls.size(); j++);{
      if(i!= j){
        Ball B2 = balls.get(j);
        b.collideWith(B2);
      }
    }   
  }
  if(mousePressed){
  balls.add(new Ball(30,30));
  }
  fill(255);
  text(frameRate, 20, 50);
  if (balls.size() > maxballs) {
    balls.remove(0);
  }
}
class Ball {
  PVector loc, vel;
  float size, hue, sat, bright, speed;

  Ball(float othersize, float otherspeed){
   size =othersize;
    loc = new PVector(random(size, width-size), random(size,height-size));
    vel = new PVector(1, 1);
    speed=otherspeed;
    hue = random(360);
    sat = 100;
    bright =100;
  
  }

  void display() {
    fill(hue, sat, bright);
    ellipse(loc.x, loc.y, size, size);
  }

  void move() {
    loc.add(vel);
  }

  void wallBounce() {
    if (loc.x + size/2 > width || loc.x - size/2 < 0) {
      vel.x *= -1;
    } 
    if (loc.y + size/2 > height || loc.y - size/2 < 0) {
      vel.y *= -1;
    }
  }

  void collideWith(Ball someOtherBall) {
   
    if (loc.dist(someOtherBall.loc) < size/2 + someOtherBall.size/2) {
      vel = PVector.sub(loc, someOtherBall.loc);
      vel.normalize();
      vel.setMag(speed);
    }
  }
}


