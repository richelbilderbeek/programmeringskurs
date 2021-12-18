void setup()
{
  size(256,256);  
}

void draw() 
{
  fill(mouseX, mouseY, mouseX + mouseY);
  ellipse(mouseX, mouseY, 50, 50);  
  fill(mouseY, mouseX, 255);
  ellipse(mouseY, mouseX, 50, 50);  
}
