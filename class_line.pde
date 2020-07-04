class Line{

  int rad = 3;        // Width of the shape
  float xpos1, ypos1;
  
  float xpos2, ypos2; // Starting position of shape    
  
  float xspeed = 7.8;  // Speed of the shape
  float yspeed = 5.9;  // Speed of the shape
  
  int xdirection1 = 1;  // Left or Right
  int ydirection1 = -1;  // Top to Bottom
  
  float xdirection2 = 1;  // Left or Right
  float ydirection2 = 1;  // Top to Bottom
 
  
  Line(){
    //Line point A
    xpos1 = 0;
    ypos1 = 0;
    //Line point B
    xpos2 = 0;
    ypos2 = 0;
  }
  
    Line(int xpos1, int ypos1, int xpos2, int ypos2){
    this.xpos1 = random(0+rad/2, width-rad/2);
    this.ypos1 = random(0+rad/2, width-rad/2);
    this.xpos2 = random(0+rad/2, width-rad/2);
    this.ypos2 = random(0+rad/2, width-rad/2);
  }
  
  void display(){
    fill(0);
    noStroke();
    ellipse(xpos1, ypos1, rad, rad);
    ellipse(xpos2, ypos2, rad, rad);
    noFill();
    stroke(0);
    strokeWeight(1);
    line(xpos1, ypos1,xpos2, ypos2);
  }
  
  void move(){
    xpos1 = xpos1 + ( xspeed * xdirection1);
    ypos1 = ypos1 + ( yspeed * ydirection1);
    xpos2 = xpos2 + ( xspeed * xdirection2);
    ypos2 = ypos2 + ( yspeed * ydirection2);
    
    if (xpos1 > width-rad || xpos1 < rad) {
    xdirection1 *= -1;
    }
    if (ypos1 > height-rad || ypos1 < rad) {
    ydirection1 *= -1;
    }
    if (xpos2 > width-rad || xpos2 < rad) {
    xdirection2 *= -1;
    }
    if (ypos2 > height-rad || ypos2 < rad) {
    ydirection2 *= -1;
    }
  }
 

}
