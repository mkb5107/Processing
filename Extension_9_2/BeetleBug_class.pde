class BeetleBug {
  float x; 
  float y; 
  float xTwo; 
  float yTwo;
  float xThree; 
  float yThree;
  int diameter; 
  float speed = 2.5;

  BeetleBug(float tempX, float tempY, float tempXTwo, float tempYTwo, float tempXThree, float tempYThree, int tempDiameter) {  
    x = tempX;  
    y = tempY;  
    xTwo = tempXTwo;  
    yTwo = tempYTwo;  
    xThree = tempXThree;  
    yThree = tempYThree;  
    diameter = tempDiameter;
  }
  void move() {  
    x += random(-speed, speed); 
    y += random(-speed, speed);
    xTwo += random(-speed, speed);   
    yTwo += random(-speed, speed); 
    xThree += random(-speed, speed); 
    yThree += random(-speed, speed); 
    diameter += random(-speed, speed); 
  }
  void display() { 
    triangle(x, y, xTwo, yTwo, xThree, yThree);
  }
}