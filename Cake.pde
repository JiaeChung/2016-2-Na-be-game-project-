
class Cake {
  int x, y;
  PImage img1;
  PImage img2;
  PImage img3;
  PImage img4;


  Cake() {
    x = 800;
    y = 50;
    img1 = loadImage("cake1.png");
    img2 = loadImage("cake2.png");
    img3 = loadImage("cake3.png");
    img4 = loadImage("slot.png");
  }

  void draw(float mx, float my) {
    pushMatrix();
    translate(mx, my);
    fill(0);
    image(img4, x-15, y-10, 170, 70);
    image(img1, x, y, 40, 40);
    image(img2, x+50, y, 40, 40);
    image(img3, x+100, y, 40, 40);
    popMatrix();
  }
  
  void remove(){
   rect(100,100,50,50); 
    
  }
}