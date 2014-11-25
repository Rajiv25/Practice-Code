 int count =100;
float[] size = new float[count];
PVector[] loc=new PVector[count];
PVector[] vel= new PVector[count];
PVector[]acc =new PVector[count];

void setup(){
  size(1200,800);
  for(int i=0; i< count; i++){
  loc[i]=new PVector(random(size[i], width-size[i]), random(size[i], height-size[i]));
  vel[i]=PVector.random2D();
  acc[i]=new PVector(0,0);
  size[i]=random(40,60);
  }
}
void draw(){
  background(0);
  for(int i=0; i<count; i++){
  vel[i].add(acc[i]);
  loc[i].add(vel[i]);
   for (int r = 0; r < count; r++) {
      if (i!=r) {
        if (loc[i].dist(loc[r]) < size[i]/2 + size[r]/2) { 
          print("yes");
          fill(255,0,0);
          if (loc[i].x < loc[r].x) {    
            vel[i].x = -abs(vel[i].x);
            vel[r].x = abs(vel[r].x);
          } else {
            vel[i].x = abs(vel[i].x);
            vel[r].x = -abs(vel[r].x);
          }
          if (loc[i].y < loc[r].y) {   
            vel[i].y = -abs(vel[i].y);
            vel[r].y = abs(vel[r].y);
          } else {
            vel[i].y = abs(vel[i].y);
            vel[r].y = -abs(vel[r].y);
          }
        }else{
        fill(0,255,0);
   }
   }
   }
  ellipse(loc[i].x,loc[i].y,size[i],size[i]);
   if (loc[i].x + size[i]/2 > width || loc[i].x - size[i]/2 < 0) {
      vel[i].x *= -1;
    }
    if (loc[i].y + size[i]/2 > height || loc[i].y - size[i]/2 < 0) {
      vel[i].y *= -1;
    }
    }
  }
