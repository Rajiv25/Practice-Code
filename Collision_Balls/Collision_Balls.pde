float x,y,size;
PVector loc;


void setup(){
  size(1200,800);
  x=width/2;
  y=height/2;
  loc=new PVector(x,y);
  size=100;
}
void draw(){
  background(0);
  if(dist(mouseX,mouseY,loc.x,loc.y)<size/2){
    print("Yes!!!");
    fill(255,0,0);
    loc.x=random(width);
    loc.y=random(height);
  }
  else{
    fill(0,255,0);
  }
  ellipse(loc.x,loc.y,size,size);
}
