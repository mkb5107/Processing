//MacKenzie Becker "Gunter"
size(220, 300);
smooth();
background(#81C5E8);

//background
noStroke();
fill(#D2E9F5);
rect(0, 190, 220, 150);

//Body
fill(32, 67, 108);
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
vertex(60,145);
vertex(55, 151);
vertex(50, 162);
vertex(40, 174);
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