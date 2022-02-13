int x = -1;
int y = -1;
int x2 = -1;
int y2 = -1;
int fill = -1;
int x3 = -1;
int y3 = -1;
int yv3 = -1;
int x4 = -1;
int y4 = -1;
int x5 = -1;
int y5 = -1;
int xv5 = -1;
int yv5 = -1;
int bounce5 = -1;
int x6 = -1;
int y6 = -1;
int xv6 = -1;
int yv6 = -1;
int[] x7 = {};
int[] y7 = {};
int var7 = -1;
int[] x8 = {};
int[] y8 = {};
int[] c8 = {};
int var8 = -1;
PImage mario;
void setup(){
  background(0,255,0);
  fullScreen();
  //size(250,250);
  x = width/2;
  y = 0;
  x2 = 0;
  y2 = height/2;
  fill = 0;
  x3 = width/2;
  y3 = height/2;
  yv3 = 1;
  x4 = -height/2;
  y4 = height/2;
  x5=width/2;
  y5=(height/3)*2;
  xv5=1;
  yv5=1;
  bounce5=0;
  x6=width/2;
  y6=height/6;
  xv6=3;
  yv6=1;
  var7 = 6;
  x7 = new int [var7];
  y7 = new int [var7];
  for (int i=0; i<var7; ++i)
  {
    x7[i] = (width/20 * i) + 100;
    y7[i] = height/20;
  }
  var8 = 256;
  x8 = new int [var8];
  y8 = new int [var8];
  c8 = new int [var8];
  for (int i=0; i<var8; ++i)
  {
    x8[i] = int(random(width));
    y8[i] = int(random(height));
    c8[i] = i;
  }
  mario = loadImage("mario.png");
}
void draw(){
  fill(mouseX,mouseY,255);
  ellipse(mouseX,mouseY,width/20,height/20);
  fill(mouseY,mouseX,255);
  ellipse(mouseY,mouseX,width/20,height/20);
  for (int i=0; i<var8; ++i)
  {
    fill(0,0,c8[i]);
    ellipse(x8[i],y8[i],width/20,height/20);
  }
  fill(255);
  rect(width/4,height/4,width/2,height/2);
  //background(255, 200, 0);
  x4++;
  stroke(255, 200, 0);
  fill(255, 0, 179);
  ellipse(x4,y4,height,height);
  if(x4>width+height){
    x4 = -height;
  }
  y3 += yv3;
  if(y3<height/6){
    yv3 = 1;
  }
  if(y3>height/6*5){
    yv3 = -1;
  }
  ellipse(x3,y3,width/3,height/3);
  x--;
  y++;
  x2++;
  fill += 3;
  if(fill>256){
    fill = 0;
  }
  stroke(random(255),0,0);
  fill(0,fill,0);
  rect(x2,y2,width/3,height/3);
  stroke(random(256),random(256),random(256));
  line(random(width),random(height),random(width),random(height));
  point(random(width),random(height));
  ellipse(x,y,width/4,height/4);
  if (x+(width/4)<0){
  x = width + (width/4);
  }
  if (y-(height/4)>height+(height/4)){
  y = 0 - (height/4);
  }
  x5 += xv5;
  if (x5<width/14){
  xv5 = 1;
  bounce5++;
  }
  if (x5>(width/14)*14){
  xv5 = -1;
  bounce5++;
  }
  y5 += yv5;
  if (y5<height/14){
  yv5 = 1;
  bounce5++;
  }
  if (y5>(height/14)*14){
  yv5 = -1;
  bounce5++;
  }
  ellipse(x5,y5,width/7,height/7);
  text("bounces",width/7,height/14);
  text(bounce5,width/7,height/7);
  y6 += yv6;
  yv6++;
  if(y6>height/6*5){
    yv6 = yv6 * -1;
  yv6++;
  }
  x6 += xv6;
  if(x6<width/6){
    xv6 = 3;
  }
  if(x6>width/6*5){
    xv6 = -3;
  }
  ellipse(x6,y6,width/6,height/6);
  for (int i=0; i<var7; ++i)
  {
    x7[i]--;
    ellipse(x7[i],y7[i],width/20,height/20);
    if(x7[i]<-width/20){
    x7[i] = width + width/20;
    }
  }
  image(mario,width/2,height/2);
}
