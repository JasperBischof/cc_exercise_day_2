Line l1;
Line l2;
Line l3;
Line l4;
Line l5;

void setup() 
{
  background(255);
  size(1000, 1000);
  frameRate(30);
  l1 = new Line(0, 0, 0, 0);
  //l2 = new Line(0, 0, 0, 0);
  //l3 = new Line(0, 0, 0, 0);
  //l4 = new Line(0, 0, 0, 0);
  //l5 = new Line(0, 0, 0, 0);
}

void draw() 
{ 
  //fade or no fade   
  noStroke();
  //fill(255, 255, 255, 10);
  //rect(0, 0, width, height);

  l1.display();
  l1.move();

//  l2.display();
//  l2.move();

//  l3.display();
//  l3.move();

  //l4.display();
  //l4.move();

  //l5.display();
  //l5.move();
}

void mousePressed() {
  saveFrame("frame-####.png");
}
