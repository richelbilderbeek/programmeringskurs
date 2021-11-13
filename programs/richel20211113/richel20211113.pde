float x1 = 0;
float y1 = 0;
float x2 = 0;
float y2 = 0;
float x3 = 0;
float y3 = 0;
float x4 = 0;
float y4 = 0;

void setup()
{
  size(1200, 800);
  x1 = 255;
  y1 = 0;
  x2 = width;
  y2 = 255;
  x3 = width - 255;
  y3 = height;
  x4 = 0;
  y4 = height - 255;
}

void draw() 
{
  if (mouseX < x1) x1 = x1 - 1;
  if (mouseX > x1) x1 = x1 + 1;
  if (mouseY < y1) y1 = y1 - 1;
  if (mouseY > y1) y1 = y1 + 1;
  if (mouseX < x2) x2 = x2 - 1;
  if (mouseX > x2) x2 = x2 + 1;
  if (mouseY < y2) y2 = y2 - 1;
  if (mouseY > y2) y2 = y2 + 1;
  
  if (mouseX < x3) x3 = x3 - 1;
  if (mouseX > x3) x3 = x3 + 1;
  if (mouseY < y3) y3 = y3 - 1;
  if (mouseY > y3) y3 = y3 + 1;
  if (mouseX < x4) x4 = x4 - 1;
  if (mouseX > x4) x4 = x4 + 1;
  if (mouseY < y4) y4 = y4 - 1;
  if (mouseY > y4) y4 = y4 + 1;
  if (1 == 2) 
  {
    x1 = x1 + random(-2, 2);
    y1 = y1 + random(-2, 2);
    x2 = x2 + random(-2, 2);
    y2 = y2 + random(-2, 2);
    x3 = x3 + random(-2, 2);
    y3 = y3 + random(-2, 2);
    x4 = x4 + random(-2, 2);
    y4 = y4 + random(-2, 2); 
  }
  if (abs(x1 - x2) <= 1 && abs(y1 - y2) <= 1) 
  {  
    x1 = random(width);
    y1 = random(height);
  }
  if (abs(x2 - x3) <= 1 && abs(y2 - y3) <= 1) 
  {  
    x2 = random(width);
    y2 = random(height);
  }
  if (abs(x3 - x4) <= 1 && abs(y3 - y4) <= 1) 
  {  
    x3 = random(width);
    y3 = random(height);
  }
  if (abs(x4 - x1) <= 1 && abs(y4 - y1) <= 1) 
  {  
    x4 = random(width);
    y4 = random(height);
  }
  {
    float r = 255 - abs(x2 - x1);
    float g = 255 - abs(y2 - y1);
    float b = 255 - abs(x2 - x1) - abs(y2 - y1);
    fill(255 - r, g, b);
    stroke(255 - r, g, b);
    ellipse(x1, y1, 100, 100);
  }
  {
    float r = 255 - abs(x3 - x2);
    float g = 255 - abs(y3 - y2);
    float b = 255 - abs(x3 - x2) - abs(y3 - y2);
    fill(r, 255 - g, b);
    stroke(r, 255 - g, b);
    ellipse(x2, y2, 100, 100);
  }
  {
    float r = 255 - abs(x4 - x3);
    float g = 255 - abs(y4 - y3);
    float b = 255 - abs(x4 - x3) - abs(y4 - y3);
    fill(r, g, 255 - b);
    stroke(r, g, 255 - b);
    ellipse(x3, y3, 100, 100);
  }
  {
    float r = 255 - abs(x1 - x4);
    float g = 255 - abs(y1 - y4);
    float b = 255 - abs(x1 - x4) - abs(y1 - y4);
    fill(r, g, b);
    stroke(r, g, b);
    ellipse(x4, y4, 100, 100);
  }
}
