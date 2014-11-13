int x= 0;
void setup(){
  size(displayWidth,displayHeight);

}
void draw(){
  background(0);
while (x<200){
  ellipse(random(width),height/2,50,50);
  ellipse(width/2,random(height),50,50);
  fill(random(255), random(225),random(255));
x++;
}
x=0;
}
