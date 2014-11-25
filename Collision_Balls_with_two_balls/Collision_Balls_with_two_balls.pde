float x,y,size, size2;
PVector loc, vel, acc;
PVector loc2,vel2,acc2;

void setup(){
  size(1200,800);
  x=width/2;
  y=height/2;
  loc=new PVector(x,y);
  vel=PVector.random2D();
  acc=new PVector(0,0);
  size=100;
  size2=100;
  loc2= new PVector(random(size2,width-size2),random(size2,height-size2));
  vel2=PVector.random2D();
  acc2= new PVector(0,0);
}
void draw(){
  background(0);
  vel.add(acc);
  loc.add(vel);
  vel2.add(acc2);
  loc2.add(vel2);
  if(loc.dist(loc2)<size/2+size2/2){
    print("Yes!!!");
    fill(255,0,0);
    if(loc.x<loc2.x){
    vel.x=-abs(vel.x);
    vel2.x=abs(vel2.x);
  }
  else{
    vel.x=abs(vel.x);
    vel2.x=-abs(vel2.x);
  }
  if(loc.y<loc2.y){
    vel.y=-abs(vel.y);
    vel2.y=abs(vel2.y);
  }
  else{
    vel.y=abs(vel.y);
    vel2.y=-abs(vel2.y);
  }
  }else{ 
    fill(0,555,0);
  }
   
  
     ellipse(loc.x,loc.y,size,size);
     ellipse(loc2.x,loc2.y,size2,size2);
   if(loc.x+size/2>width || loc.x-size/2<0){
    vel.x*=-1;
  }
  if(loc.y+size/2>height || loc.y-size/2<0){
    vel.y*=-1;
  }
  if(loc2.x+size/2>width || loc2.x-size2/2<0){
    vel2.x*=-1;
  }
  if(loc2.y+size/2>height || loc2.y-size2/2<0){
    vel2.y*=-1;
  }
}

