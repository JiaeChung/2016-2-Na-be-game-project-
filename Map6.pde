class Map6 {
  PImage cave_notice;
  PImage slot;
  PImage cavee;
  PImage[] cave= new PImage [6];
  PImage balloon;
  PImage[] portals= new PImage [6];
  PImage portal0;
  PImage portal1;
  PImage portal2;
  PImage portal3;
  PImage portal4;
  PImage portal5;
  PImage s6_1;
  PImage s6_2;
  PImage s6_3;
  PImage s6_4;
  PImage message;
  PImage  frame;
  int balloony= 0;
  int balloonSpeed= 2;
  Map6() {
    slot= loadImage("herostone1.png");
    message =loadImage("message.png");
    cave_notice = loadImage("cave notice.png");
    cavee = loadImage("cavee.png");
    frame = loadImage("frame.png");
    balloon= loadImage("balloon.png");
    portals[0]= loadImage("portal1.png");
    portals[1]= loadImage("portal2.png");
    portals[2]= loadImage("portal3.png");
    portals[3]= loadImage("portal4.png");
    portals[4]= loadImage("portal5.png");
    portals[5]= loadImage("portal6.png");

    s6_1 = loadImage("6s1.png");
    s6_2 = loadImage("6s2.png");
    s6_3 = loadImage("6s3.png");
    s6_4 = loadImage("6s4.png");
  }

  void draw() {
    blocks[0] = new Block(-10000, 630, 20*width, 1000);
    oldGuy.position.x= constrain(oldGuy.position.x, 250, 1000);
    image(cavee, matrixX, 0);

    image(portals[(frameCount/5)%6], matrixX+850, 400);
    image(balloon, matrixX+100, balloony);


    image(cave_notice, matrixX+390, 530);
    oldGuy.updateOldGuy(blocks, matrixX, matrixY); 

    //if (oldGuy.position.x<470 &&oldGuy.position.x>230) {
    //  image(message, width/10, 5);
    //}
    image(slot, 750, 550-479);

    if (oldGuy.position.x<470 &&oldGuy.position.x>230) {
      if (m6count0 ==0 ) {
        image(s6_1, width/10, 5);
      }
      if (m6count0 ==1 ) {
        image(s6_2, width/10, 5);
      }
      if (m6count0 ==2 ) {
        image(s6_3, width/10, 5);
      }
      if (m6count0 ==3 ) {
        image(s6_4, width/10, 5);
      }
    }



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
    image(frame, 0, 0, 1080, 720);


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


    if (oldGuy.position.x<20000 && oldGuy.position.x>10) {   
      if (keyPressed) {
        if (keyCode == CONTROL) {
          map=7;
          oldGuy.position.x=1870;
          oldGuy.image= oldGuy.images[0];
          matrixX=0;
          matrixY=0;
        }
      }
    }
  }
}