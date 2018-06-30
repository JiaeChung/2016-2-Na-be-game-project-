class Map3 {
  PImage forestschool;
  PImage school;
  PImage  frame;
  PImage[] portals= new PImage [6];
  PImage portal0;
  PImage portal1;
  PImage portal2;
  PImage portal3;
  PImage portal4;
  PImage portal5;
  PImage cake1;
  PImage cake2;
  PImage cake3;
  float cakeX3=905;

  Map3() {
    cake3= loadImage("cake3.png");
    school= loadImage("school.png");
    forestschool = loadImage("forestschool.png");
    frame = loadImage("frame.png");
    portals[0]= loadImage("portal1.png");
    portals[1]= loadImage("portal2.png");
    portals[2]= loadImage("portal3.png");
    portals[3]= loadImage("portal4.png");
    portals[4]= loadImage("portal5.png");
    portals[5]= loadImage("portal6.png");
  }

  void draw() {
    blocks[0] = new Block(-10000, 687, 20*width, 1000);
    oldGuy.position.x= constrain(oldGuy.position.x, -1800, 1030);

    image(forestschool, matrixX, 0);
    image(forestschool, matrixX-1080, 0);
    image(forestschool, matrixX-1080*2, 0);
    image(school, matrixX-1600, 0);
    image(portals[(frameCount/5)%6], matrixX-1340, 400);
    image(portals[(frameCount/5)%6], matrixX+850, 400);
    oldGuy.updateOldGuy(blocks, matrixX, matrixY); 
    image(frame, 0, 0, 1080, 720);
    image(slot, 700, 550-479);
    image(cake3, cakeX3-36, 568-479);
    if (oldGuy.position.x > 200 && oldGuy.position.y > 200) {
      matrixX = 0;
      matrixY = 0;
    } else if (oldGuy.position.x  < 200 &&  oldGuy.position.y > 200) {
      matrixX = 200 - oldGuy.position.x ;
      matrixY = 0;
    } else if (oldGuy.position.x <200 &&oldGuy.position.y < 200) {
      matrixX = 200 - oldGuy.position.x ;
      matrixY = 200 - oldGuy.position.y;
    } else if (oldGuy.position.x  >200 &&oldGuy.position.y < 200) {
      matrixX = 0;
      matrixY = 200 - oldGuy.position.y;
    }



    if (oldGuy.direction == -1 && oldGuy.jumped ==false && oldGuy.intersect== false) {
      oldGuy.image= oldGuy.lefts[(frameCount/7)%8];
      oldGuy.size= new PVector(105, 200);
    } else if (oldGuy.direction == 1 && oldGuy.jumped ==false && oldGuy.intersect== false) {
      oldGuy.image= oldGuy.rights[(frameCount/7)%8];
      oldGuy.size= new PVector(105, 200);
    } else if (oldGuy.direction == -1 && oldGuy.jumped ==true && oldGuy.intersect== false) {
      oldGuy.image= oldGuy.jumps[1];
      oldGuy.size= new PVector(130, 200);
    } else if (oldGuy.direction == 1 && oldGuy.jumped ==true && oldGuy.intersect== false) {
      oldGuy.image= oldGuy.jumps[3];
      oldGuy.size= new PVector(130, 200);
    }
    if ( oldGuy.direction == -1 && oldGuy.velocity.y > 5 && oldGuy.intersect== false) {
      oldGuy.image= oldGuy.jumps[0];
      oldGuy.size= new PVector(165, 200);
    }
    if ( oldGuy.direction == 1 && oldGuy.velocity.y > 5 && oldGuy.intersect== false) {
      oldGuy.image= oldGuy.jumps[2];
      oldGuy.size= new PVector(165, 200);
    }



    if (oldGuy.position.x<-1150 && oldGuy.position.x>-1310) {
      if (keyPressed) {
        if (keyCode == CONTROL) {
          map=4;
          oldGuy.position.x=970;
          oldGuy.image= oldGuy.images[0];
          matrixX=0;
          matrixY=0;
        }
      }
    }
  }
}