float max_distance;

void setup() {
  size(640, 360); 
  noStroke();
  max_distance = dist(0, 0, width, height);
}

void draw() {
  background(0);

  for(int i = 0; i <= width; i += 20) {
    for(int j = 0; j <= height; j += 20) {
      float circleSize = dist(mouseX, mouseY, i, j);
      circleSize = circleSize/max_distance * 66;
      ellipse(i, j, circleSize, circleSize);
    }
  }
}
