class Particle {
  float x;
  float y;

  float vx;
  float vy;

  Particle() {
    x = width/2;
    y = height/2;
    float a = random(TWO_PI);
    float speed = random(1, 10);
    vx = cos(a)*speed;
    vy = sin(a)*speed;
  }

  void display() {
    noStroke();
    color c = video.get(int(x), int(y));
    fill(c, 125);
    ellipse(x, y, 5, 5);
  }

  void move() {
    x = x + vx;//random(-5, 5);
    y = y + vy;//random(-5, 5);
    if (y < 0) {
      y = height;
    } 

    if (y > height) {
      y = 0;
    }
    if (x < 0) {
      x = width;
    } 

    if (x > width) {
      x = 0;
    }
  }
}