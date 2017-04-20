PImage img;
float angle;

//Red Button
int circleX, circleY;  //position of the circle button
int circleSize = 93;
boolean circleOver = false;

//Blue Button
int circle2X, circle2Y;
boolean circleOver2 = false;

//Original Button
int circle3X, circle3Y;
boolean circleOver3;

void setup () {
  background(0);
  size(1000, 1000);
  smooth();
  img = loadImage("Pug.jpg");
  circleX = 500;
  circleY = 850;
  circle2X = 300;
  circle2Y = 850;
  circle3X = 700;
  circle3Y = 850;
  ellipseMode(CENTER);
  translate(500, 500);
  imageMode(CENTER);
}

void draw() {
  background(0);
  update(mouseX, mouseY);
  stroke(0);
  ellipse(circleX, circleY, circleSize, circleSize);
  fill(#329DF7);
  ellipse(circle2X, circle2Y, circleSize, circleSize);
  fill(225);
  ellipse(circle3X, circle3Y, circleSize, circleSize);
  fill(#F73232);
  translate(500, 500);
  rotate(angle);
  image(img, 0, 0);


  if (keyPressed) {
    if (keyCode == DOWN) {    //Down = smaller
      img.resize(0, 225);
    } else if (keyCode == UP) {    //Up = bigger
      img.resize(0, 600);
    } else if (keyCode == RIGHT) {
      angle += HALF_PI;
      delay(150);
    } else if (keyCode == LEFT) {
      angle -= HALF_PI;
      delay(150);
    } else if (key == ' ') {
      noTint();
      img = loadImage("Pug.jpg");
    }
  }
}

// Button Stuff Starts

void update(int x, int y) {
  if (overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
    circleOver2 = false;
    circleOver3 = false;
  } else if ( overCircle2 (circle2X, circle2Y, circleSize) ) {
    circleOver2 = true;
    circleOver = false;
    circleOver3 = false;
  } else if ( overCircle3 (circle3X, circle3Y, circleSize) ) {
    circleOver2 = false;
    circleOver = false;
    circleOver3 = true;
  } else { 
    circleOver = circleOver2 = circleOver3 = false;
  }
}

void mousePressed() {
  if (circleOver) {
    tint(#F73232);
  } else if (circleOver2) {
    tint(#0C81E5);
  } else if (circleOver3) {
    img.filter(GRAY);
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle2(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle3(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}