 int count =100;
float[] size = new float[count];
PVector[] loc=new PVector[count];
PVector[] vel= new PVector[count];
PVector[]acc =new PVector[count];
float[]mass = new float[count];
int MinDiam = 10;
int MaxDiam = 60;



void setup(){
  background(0);
  size(1200,800);
  for(int i=0; i< count; i++){
  loc[i]=new PVector(random(size[i], width-size[i]), random(size[i], height-size[i]));
  vel[i]=PVector.random2D();
  acc[i]=new PVector(0,0);
  size[i]=random(MinDiam,MaxDiam);
  mass[i]=map(size[i], MinDiam, MaxDiam, .1, 1.5);
  }
}
void draw(){
  fill(120,8,250);
  background(0);
  for(int i=0; i<count; i++){
  vel[i].add(acc[i]);
  loc[i].add(vel[i]);
   for (int r = 0; r < count; r++) {
      if (i!=r) {
        if (loc[i].dist(loc[r]) < size[i]/2 + size[r]/2) { 
          print("yes");
         fill(255,0,0);
        
        vel[i] = PVector.sub(loc[i], loc[r]);      
        vel[i].normalize();                       
        vel[i].div(mass[i]);     
      
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
  
