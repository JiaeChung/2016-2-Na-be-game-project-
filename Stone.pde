class Stone{
  
  
 float x;
 float y; 
 float speed; 
 float r;
 float gravity;
 PImage heroStone;
 
 Stone(){
  x =width/2;
  y =0;
  r =60;
  speed =0;
  gravity =0.05;
  heroStone =loadImage("herostone.png");
 }
  
  void gravity(){
    speed = speed +gravity;
  }
  
  void move(){
   y = y+speed;
   if(y> height/2){
    speed = speed* (-0.75);
    y = height/2;
   }    
  }
  
  void display(){
   imageMode(CENTER);
   image(heroStone, x, y, r, r);
   imageMode(CORNER);
  }
  
  
}