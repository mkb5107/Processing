class JitterBug {
  float x; 
  float y; 
  int diameter; 
  float speed = 2.5;
  float sizeCircle;

  
  JitterBug(float tempX, float tempY, int tempDiameter, float tempSizeCircle) {  
    x = tempX;  
    y = tempY;  
    diameter = tempDiameter;
    sizeCircle = tempSizeCircle;
  }
  void move() {  
    x += random(-speed, speed); 
    y += random(-speed, speed);
  }
  void display() { 
    ellipse(x, y, diameter, diameter);
  }
  void setColor() {
    fill(random(225), random(225), random(225), random(225));
  }
   void setSize() {
    sizeCircle = diameter*2;
  }
}