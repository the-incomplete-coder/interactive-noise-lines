float zOff;
void setup() {
  size(500, 500);
  zOff = 0;
  
}

void draw() {
  colorMode(RGB,255);
  background(0);
  for (int j = 0; j < 15; j++) {
    stroke(0);
    strokeWeight(2);
    beginShape();
    fill(255,20);
    for (float i = 0; i <= TWO_PI; i+=0.05) {
      float var = 2;
      float xOff = map(var*cos(i)+j*3, -1, 1, 0, 1);
      float yOff = map(var*sin(i)+j*3, -1, 1, 0, 1);

      vertex(map(i, 0, TWO_PI, 0, width+10), map(noise(xOff, yOff, zOff), 0, 1, mouseY, mouseX));
    }
    vertex(width+20,height+20);
    vertex(-20,height+20);
    endShape(CLOSE);
  }
  zOff += mouseX/10000.0;
}
