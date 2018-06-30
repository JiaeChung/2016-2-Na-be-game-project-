
class Catcher {
  
  float r;
  float x, y;
  PImage img;
  
  Catcher(float _r) {
    r = _r;
    x = 0;
    y = 0;
   imageMode(CENTER);

    img = loadImage("basket.png");

  imageMode(CORNER);
  }
  
  void setLocation(float _x, float _y) {
    x = _x;
    y = _y;
  }
  
  void display() {
    noStroke();
    image(img, x, y, r, r);

    

  }
  
  // check intersection
  boolean intersect(Beatdrop b) {
    float distance = dist(x, y, b.x, b.y);
      if(distance < r + b.r) {
      return true; 
   } else {
      return false;
    }
  }
}