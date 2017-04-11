JitterBug jit;
JitterBug bug;
BeetleBug beetle;
void setup() { 
  size(480, 120);  
  smooth();  
  jit = new JitterBug(width * 0.33, height/2, 50); 
  bug = new JitterBug(width * 0.66, height/2, 20);
  beetle = new BeetleBug(30, 40, 20, 30 , 60, 30 , 40);
                      
}
void draw() { 
  jit.move(); 
  jit.display(); 
  bug.move(); 
  bug.display();
  beetle.move();
  beetle.display();
} 