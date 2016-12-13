//MacKenzie Becker "Gunter"
int body = #20436C; 
int belly = 225;
int x = 1;
int y = 1;
int eyeleftx = 15;
int eyelefty = 15;
int eyerightx = 15;
int eyerighty = 15;
float mx;
float my;
float wx;
float wy;
float easing = 0.05;


void setup() {
  size(220, 300);
  smooth();
  background(#81C5E8);
  //background
  noStroke();
  fill(#D2E9F5);
  rect(0, 190, 220, 150);

  //Body
  fill(body);
  ellipse(105, 120, 90, 90);
  rect(60, 120, 90, 100);
  fill(225);
  ellipse(90, 120, 60, 60);
  rect(60, 120, 60, 100);

  //Feet
  fill(196, 141, 40);
  rect(50, 210, 20, 10);
  rect(90, 210, 20, 10);

  //eyes
  stroke(0);
  fill(0);
  ellipse(70, 110, 15, 15);
  ellipse(100, 110, 15, 15);
  fill(225);
  ellipse(68, 108, 10, 10);
  ellipse(98, 108, 10, 10);

  //beak
  noStroke();
  fill(#EA9442);
  ellipse(85, 130, 10, 10);
  beginShape();
  vertex(85, 125);
  vertex(45, 130);
  vertex(85, 135);
  endShape(CLOSE);

  //flippers
  noStroke();
  fill(32, 67, 108);
  beginShape();
  vertex(60, 145);
  vertex(55, 151);
  vertex(45, 162);
  vertex(43, 170);
  vertex(44, 172);
  vertex(45, 175);
  vertex(50, 181);
  vertex(60, 170);
  endShape(CLOSE);

  beginShape();
  vertex(140, 135);
  vertex(89, 172);
  vertex(90, 175);
  vertex(95, 180);
  vertex(100, 181);
  vertex(110, 175);
  vertex(120, 165);
  vertex(122, 140);
  vertex(130, 145);
  endShape(CLOSE);
}

void draw() {
  if (keyPressed) {
    if ((key == 'C') || (key == 'c')) {
      body = #FFFFFF;
      belly = #769FE0;
    } else if ((key == 'v') || (key == 'V')) {
      body = #20436C;
      belly = #FFFFFF;
    } 
    if (keyCode == LEFT) { // If it’s the left arrow
      x--;
    } else if (keyCode == RIGHT) { // If it’s the right arrow
      x++;
    } else if (keyCode == UP) {
      y--;
    } else if (keyCode == DOWN) {
      y++;
    }
  }
    //background
    noStroke();
    background(#81C5E8);
    fill(#D2E9F5);
    rect(0, 190, 220, 150);

    //Body
    fill(body);
    ellipse(x+105, y+120, 90, 90);
    rect(x+60, y+120, 90, 100);
    fill(belly);
    ellipse(x+90, y+120, 60, 60);
    rect(x+60, y+120, 60, 100);

    //Feet
    fill(196, 141, 40);
    rect(x+50, y+210, 20, 10);
    rect(x+90, y+210, 20, 10);

    //eyes
    stroke(0);
    fill(0);
    ellipse(x+70, y+110, eyerightx, eyerighty);
    ellipse(x+100, y+110, eyeleftx, eyelefty);

    //beak
    noStroke();
    fill(#EA9442);
    ellipse(x+85, y+130, 10, 10);
    beginShape();
    vertex(x+85, y+125);
    vertex(x+45, y+130);
    vertex(x+85, y+135);
    endShape(CLOSE);

    //flippers
    noStroke();
    fill(body);
    beginShape();
    vertex(x+60, y+145);
    vertex(x+55, y+151);
    vertex(x+45, y+162);
    vertex(x+43, y+170);
    vertex(x+44, y+172);
    vertex(x+45, y+175);
    vertex(x+50, y+181);
    vertex(x+60, y+170);
    endShape(CLOSE);

    beginShape();
    vertex(x+140, y+135);
    vertex(x+89, y+172);
    vertex(x+90, y+175);
    vertex(x+95, y+180);
    vertex(x+100, y+181);
    vertex(x+110, y+175);
    vertex(x+120, y+165);
    vertex(x+122, y+140);
    vertex(x+130, y+145);
    endShape(CLOSE);
  
  //eyeballs
  fill(225);
  if (abs(mouseX - mx) > 0.1) {
    mx = mx + (mouseX - mx) * easing;
  }
  if (abs(mouseY - my) > 0.1) {
    my = my + (mouseY- my) * easing;
  }

  mx = constrain(mx, x+97, x+103);
  my = constrain(my, y+107, y+115);
  ellipse(mx, my, 10, 10); // White ellipse
  
  if (abs(mouseX - wx) > 0.1) {
    wx = wx + (mouseX - wx) * easing;
  }
  if (abs(mouseY - wy) > 0.1) {
    wy = wy + (mouseY- wy) * easing;
  }

  wx = constrain(wx, x+68, x+73);
  wy = constrain(wy, y+107, y+114);
  ellipse(wx, wy, 10, 10); // White ellipse
}