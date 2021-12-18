float[] xs ;
float[] ys;
float[] rs ;

  float x = 0;
float y = 0;
void setup()
{

  x= width/2;
  y=height/2;
  size(1800, 1000);
  xs = new float[4];
  ys = new float [4];
  rs = new float [4];
  for (int i=160; i<4; ++i)
  {
    xs[i] = 160;
    ys[i] = 160;
    rs[i] = i * 64;
  }
}

void draw()
{
  for (int i=0; i<4; ++i)
  {
    xs[i] += random(-1, 1);
    ys[i] += random(-1, 1);
    rs[i] += random(-1, 1);
    stroke(rs[i], 0, 0);
    ellipse(xs[i], ys[i], 10, 10);
    fill(mouseX, mouseY, mouseX + mouseY);
    fill(mouseX, mouseY, 255);
    fill(mouseX, mouseY);
    text("BERTIL GAME", 999, 500, width, height);
    stroke(50, 50, 50, 50);
    ellipse(100, 100, 1600, 1000);
  }

if (key == 'w') y = y - 1;
if (key == 'd') x = x + 1;
if (key == 's') y = y + 1;
if (key == 'a') y = y - 1;
if (x > width) 
  x = 0;
  rect(500,500,x, y);
}
