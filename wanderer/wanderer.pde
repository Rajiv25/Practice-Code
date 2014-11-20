
PVector loc,vel,acc;
int sz=60;

void setup(){  

  colorMode(HSB,360,100,100,100);
  size(1200,800);
  loc= new PVector(width/2,height/2);
  vel=PVector.random2D();
  acc = new PVector();
  
}
void draw(){
 vel.set(mouseX,mouseY);
 vel.normalize();                 
  vel.add(acc);         
  loc.add(vel);       
  fill(frameCount%360,100,100,100);
  ellipse(loc.x,loc.y,sz,sz);
  if(loc.x-sz/2>width){
    loc.x=-sz/2;
  }
  if(loc.x+sz/2<0){
    loc.x=width+sz/2;
  }
  if(loc.y-sz/2>height){
    loc.y= -sz/2;
  }
  if(loc.y+sz/2<0){
    loc.y=height+sz/2;
  }
  }
  

