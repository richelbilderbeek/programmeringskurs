float[] snow_xs;
float[] snow_ys;
final int n_snow = 128;
float tomten_voice = 32;

void setup()
{
  size(800, 800);
  snow_xs = new float[n_snow];
  snow_ys = new float [n_snow];
  for (int i=0; i<n_snow; ++i)
  {
    snow_xs[i] = random(400, 800);
    snow_ys[i] = random(400, 800);
  }
  
}

void draw()
{
  // Lines
  line(400, 0, 400, 800);
  line(0, 400, 800, 400);
  
  // 
  textSize(20);
  fill(150, 0, 0);
  rect(0, 0, 400, 400);
  fill(0, 100, 0);
  ellipse(15, 15, 400, 400);
  fill(0, 140, 0);
  ellipse(15, 15, 300, 300);
  fill(0, 180, 0);
  ellipse(15, 15, 200, 200);
  fill(0, 0, 0);
  text("God Jul och Gott Nytt År", 10, 30);
  
  // Max's part
  fill(0,0,0);
  rect(400,0,400,400);
  fill(0,167,0);
  triangle(120+400,350, 232+400, 130, 344+400, 350);
  stroke(#F7C007);
  textSize(32);
  text("MERRY CHRISTMAS!!!", 500,67);
  fill(#F7C007);
  ellipse(631,124,50,50);
  stroke(0, 0, 0);
  
  // Jon's part
  fill(0,0,89);
  rect(0,400,400,400);
  fill(0, 100, 0);
  triangle(200, 520, 350, 720, 50, 720);
  fill(0, 140, 0);
  triangle(200, 480, 330, 670, 70, 670);
  fill(0, 180, 0);
  triangle(200, 460, 310, 620, 90, 620);
  fill(80, 80, 0);
  rect(175, 720, 50, 50); 
  
  // Richel's part
  // Background
  fill(0, 0, 0);
  rect(400, 400, 400, 400);
  
  // Face
  fill(255, 255, 255);
  ellipse(600, 600, 180, 300);
  // Nose
  fill(255, 64, 64);
  ellipse(600, 600, 100, 100);
  // Hat
  fill(255, 0, 0);
  triangle(450, 610, 750, 610, 600, 410); 
  
  // Snow
  fill(255, 255, 255);
  for (int i=0; i<n_snow; ++i)
  {
    snow_xs[i] += random(-1, 1);
    ++snow_ys[i];
    ellipse(snow_xs[i], snow_ys[i], 10, 10);
    if (snow_ys[i] > 800) snow_ys[i] = 400;
    if (snow_xs[i] > 800) snow_xs[i] -= 400;
    if (snow_xs[i] < 400) snow_xs[i] += 400;
  }
  textSize(tomten_voice);
  ++tomten_voice;
  if (tomten_voice > 100) tomten_voice = 1;
  text("Fin Jul", 500 - tomten_voice, 500);
  text("Ho ho ho", 500 - tomten_voice, 800);
}
