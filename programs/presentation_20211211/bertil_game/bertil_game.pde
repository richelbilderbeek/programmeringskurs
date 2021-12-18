float[] xs ;
float[] ys;
float[] rs ;

float x = 100;
float y = 100;
void setup()
{

  size(1200,650);
  x= width/2;
  y= height/2;
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
  if (keyPressed)
  {
    rect(200,200, 50, 50);
    if (key == 'w') y = y - 10;
    if (key == 'd') x = x + 10;
    if (key == 's') y = y + 10;
    if (key == 'a') x = x - 10;
  }
  if (x > width) x = 0;
  if (y > height) x = 0;
  stroke(255,0,255);
  fill(255,0,255);
  rect(x, y, 500, 500);

}

//orange rectangle going around with A, S, D and W
//ellipse changing colour a little bit of the mouse pointer
//orange balls with a black trail going from the upper corner of the left hands side
//text changing colour in rhytm with the ellipse
//NU ÄR DET DAGS ATT PRESNTERA!!!!!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  //
