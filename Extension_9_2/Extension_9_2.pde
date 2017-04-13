//MacKenzie Becker April 13
JitterBug jit;
JitterBug bug;
BeetleBug beetle;
void setup() { 
  size(500, 500);  
  smooth();  
  background(225);
  jit = new JitterBug(width * 0.33, height/2, 50, 10); 
  bug = new JitterBug(width * 0.66, height/2, 20, 25);
  beetle = new BeetleBug(80, 40, 50, 60 , 60, 150 , 80);
                      
}
void draw() { 
  jit.move(); 
  jit.display();
  jit.setColor();
  jit.setSize();
  bug.move(); 
  bug.display();
  bug.setColor();
  bug.setSize();
  beetle.move();
  beetle.display();
  beetle.setColor();
 
} 