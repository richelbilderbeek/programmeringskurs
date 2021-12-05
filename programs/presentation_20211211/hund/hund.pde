float x = 0;
float y = 0;
void setup()
{
size(1000,1000);
x = width / 2;
y = height / 2;
}
void draw()
{
  fill( mouseX,  mouseY, mouseX + mouseY);
  ellipse(mouseX, mouseY, x, 50);
  fill(mouseY,mouseX, 450);
  ellipse(mouseY, mouseX, 50, 50);
  fill(mouseX,  mouseY, mouseX + mouseY);
  ellipse(mouseY, mouseX, 50, 50);
  fill(mouseX,  mouseY, mouseX + mouseY);
  if (keyPressed)
{
if (key == '1') y = y - 1;
if (key == '2') x = x + 1;
if (key == '3') y = y + 1;
if (key == '4') x = x - 1;
}
  rect(x,y,350,300);
  triangle(x,y,100,100,mouseX,mouseY);
  ellipse(100,100,mouseX,mouseY);
  text("KATT + KATT = FÖNSTER",20, 800, 500, 500);
  
 
  beginContour();
  vertex(-20, -20);
  vertex(-20, 20);
  vertex(20, 20);
  vertex(20, -20);
  vertex(10, -20);
  vertex(20, -10);

  endContour();
  endShape(CLOSE);
  arc(50, 50, 80, 80, 0, PI+QUARTER_PI, OPEN);
}
