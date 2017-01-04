//MacKenzie Becker 
//January 4th, 2017
PFont font;
PFont font2;
void setup() {
  size(480, 120);
  font = loadFont("BookmanOldStyle-BoldItalic-48.vlw");
  font2 = loadFont("Andalus-48.vlw");
  textFont(font);
}
void draw() {
  background(0);
  fill(#7A45B4);
  textFont(font);
  text("MacKenzie", 26, 70, 350, 100);
  fill(#46D8D5);
  textFont(font2);
  text("MacKenzie", 26, 30, 350, 100);
}