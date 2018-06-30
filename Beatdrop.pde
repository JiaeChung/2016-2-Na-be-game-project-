
class Beatdrop {
  float x, y;    // beatdrop position
  float speed;   // beatdrop speed
  float r;       // beatdrop size in radius
  PImage[] imgs = new PImage[7];


 
  // Constructor
  Beatdrop() {
    x = random(2*width/3);
    y = 0;
    r = 30;
    speed = random(10, 20);
    for (int i = 0; i < imgs.length; i++) {
     imgs[i] = loadImage("fruit"+i+".png"); 
    }

    
    }
  
  
  // move beatdrop
  void move() {
    y += speed;
  }
  
  // display beatdrop
  //void display() {
  // noStroke(); 
  // image(imgs[frameCount%7], x, y, r*4, r*4); 
  //}
  
  
  void display0() {
    noStroke();
    image(imgs[0], x, y, r*4, r*4);
   }
  
  void display1() {
    noStroke();
    image(imgs[1], x, y, r*4, r*4);
   }
   void display2() {
    noStroke();
    image(imgs[2], x, y, r*4, r*4);
   }
   void display3() {
    noStroke();
    image(imgs[3], x, y, r*4, r*4);
   }
   void display4() {
    noStroke();
    image(imgs[4], x, y, r*4, r*4);
   }
   void display5() {
    noStroke();
    image(imgs[5], x, y, r*4, r*4);
   }
   void display6() {
    noStroke();
    image(imgs[6], x, y, r*4, r*4);
   }
   
  
  //void setLocation(float _x) {
  //  x = _x;
   
  //}

  void caught() {
    speed = 0;
    y = -1000;
    beateffect.play();
    
  }
}