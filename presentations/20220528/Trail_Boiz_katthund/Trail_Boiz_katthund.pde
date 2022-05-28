float butter = 60;
void setup()
{ 
 fullScreen();
 background(#FF0505);
}

void draw() 
{
  fill(mouseX, mouseY, mouseX + mouseY);
  rect(mouseX, mouseY, 50, 60);
  line(mouseX, mouseY, 50, 60);
  fill(mouseY, mouseX, 255);
  line(mouseX, mouseY, 50, 60);
  rect(mouseY, mouseX, 50, 50);
  fill(#0805FF);
  stroke(#FFE705);
  rect(butter,50,200,200);
  butter = butter + 0.5;
  fill(#25FF05);
  text("katthund existerar precis som minigubbar", width / 2, height / 2);
  
}
  
