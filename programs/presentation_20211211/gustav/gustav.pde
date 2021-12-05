float x1= 30;
float y1 = 40;
float x2= 30;
float y2= 40;
void setup()
{
size(1000,1000);
x1 = width / 2;
y1 = height / 2;
x2 = width / 2;
y2 = height / 2;
}
void draw()
{
  background(255,128,0);
if (keyPressed)
{
if (key == 'w') y1 = y1 - 1;
if (key == 'd') x1 = x1 + 1;
if (key == 's') y1 = y1 + 1;
if (key == 'a') x1 = x1 - 1;
if (key == 'k') y2 = y2 - 1;
if (key == 'j') x2 = x2 + 1;
if (key == 'h') y2 = y2 + 1;
if (key == 'u') x2 = x2 - 1;
}
rect(x1,y1,50,200);
rect(x2,y2,50,200);
}
