float locx,locy;
float velx,vely;
float gravity;
float accelx;
int size = 60;

void setup(){
  size(800,800);
  locx =width/2;
  locy=size;
  velx=0;
  vely=1;
  gravity=0.1;
  accelx=0;
}

void draw(){
  background(0);
  vely+=gravity;
  velx+=accelx;
  locx+=velx;
  locy+=vely;
  ellipse(locx,locy,size,size);
  if(locy+size/2>height){
    locy=height-size/2;
    vely*=-1;
  }
}
  
