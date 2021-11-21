float state = 1; //Start

void setup() {
  size(800, 600);
}

void draw() {
  if (mouseX > 25 && mouseY > 25 && mouseX < 50 && mouseY < 50) state = 2;
  if (state == 1) {
    surface.setTitle("Put cursor in the greeen square");
  }
  if (state == 2) {
    surface.setTitle("Move cursor to the blue square");
    if (mouseX > 750 && mouseY > 550 && mouseX < 775 && mouseY < 575) state = 3;
    
    // Game over
    if (mouseX > 200 && mouseY > 200 && mouseX < 600 && mouseY < 400) state = 4;
  }
  if (state == 3) {
    surface.setTitle("Game won!");
  }
  if (state == 4) {
    surface.setTitle("Game over!");
  }
  
  background(0,0,0);
  
  // Start
  stroke(0,255,0);
  fill(128,255,128);
  rect(25, 25, 25, 25);
  
  // Obstacle
  stroke(255,0,0);
  fill(255,128,128);
  rect(200, 200, 400, 200);
  
  // Goal
  stroke(0,0,255);
  fill(128,128,255);
  rect(750, 550, 25, 25);
}
