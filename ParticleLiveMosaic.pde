import processing.video.*;

static final int WINDOW_HEIGHT = 960;
static final int WINDOW_WIDTH = 1280;

Particle[] particles;

PImage drawing;
Capture video;

void settings() {
  size(WINDOW_WIDTH, WINDOW_HEIGHT);
}

void setup() {
  video = new Capture(this, WINDOW_WIDTH, WINDOW_HEIGHT);
  video.start();

  particles = new Particle [2500];
  for (int i = 0; i < particles.length; i++) {
    particles[i] = new Particle();
  }
  background(0);
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  for (int i = 0; i < particles.length; i++) {
    particles[i].display();
    particles[i].move();
  }
}