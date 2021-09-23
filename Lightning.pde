int x = 200;
int y = 50;
int x2 = 200;
int y2 = 50;
boolean there;
void setup() {
  size(400, 400);
  strokeWeight(4);
  background(12, 20, 69);
  frameRate(4);
  
}
void draw() {
  fill(0, 130, 0);
  thunder();
  noStroke();
  rect(0, 320, 400, 80);
  clouds();
  if(mousePressed){
    there = true;
  } 
  pig();
}
void thunder() {
  stroke((int)(Math.random()*256)+210,(int)((Math.random()*256))+200,0);
  background(12, 20, 69);
  while(y2<400){
   y2 = y + ((int)(Math.random()*15));
   x2 = x + ((int)(Math.random()*20)-10);
   line(x, y, x2, y2);

   x = x2;
   y = y2;
  }
}
void mousePressed() {
 
  x=200;
  y=50;
  x2=200;
  y2=50;
  background(255);
}

void clouds() {
  fill(100);
  ellipse(150, 80, 50, 50);
  ellipse(180, 80, 50, 50);
  ellipse(220, 80, 50, 50);
  ellipse(170, 50, 50, 50);
  ellipse(200, 50, 50, 50);
}

void pig() {
  delay(200);
  if(there == true){
   fill(#FFC0CB);
   triangle(260, 230, 240, 260, 255, 260);
   fill(255);
   ellipse(200, 290, 70, 50);
   ellipse(240, 270, 40, 40);
   ellipse(180, 310, 10, 20);
   ellipse(220, 310, 10, 20);
   
 }
}





