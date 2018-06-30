class Map4 {
  PImage classroom;
  PImage classroomdoor;
  PImage[] sangbans= new PImage [3];
  PImage  frame;
  PImage[] portals= new PImage [6];
  PImage portal0;
  PImage portal1;
  PImage portal2;
  PImage portal3;
  PImage portal4;
  PImage portal5;
  PImage message;
  PImage cake3;
  float cakeX3=905;
  PImage s4_1;
  PImage s4_2;
  PImage s4_3;
  PImage s4_4;
  PImage s4_5;
  PImage s4_6;
  PImage s4_7;
  PImage s4_8;
  PImage s4_9;

  Map4() {
    slot =loadImage("slot.png");
    cake3= loadImage("cake3.png");
    message =loadImage("message.png");
    classroom= loadImage("classroom.png");
    classroomdoor= loadImage("classroomdoor.png");
    portals[0]= loadImage("portal1.png");
    portals[1]= loadImage("portal2.png");
    portals[2]= loadImage("portal3.png");
    portals[3]= loadImage("portal4.png");
    portals[4]= loadImage("portal5.png");
    portals[5]= loadImage("portal6.png");
    sangbans[0]= loadImage("sangban1.png");
    sangbans[1]= loadImage("sangban2.png");
    sangbans[2]= loadImage("sangban3.png");
    frame = loadImage("frame.png");


    s4_1 = loadImage("4s1.png");
    s4_2 = loadImage("4s2.png");
    s4_3 = loadImage("4s3.png");
    s4_4 = loadImage("4s4.png");
    s4_5 = loadImage("4s5.png");
    s4_6 = loadImage("4s6.png");
    s4_7 = loadImage("4s7.png");
    s4_8 = loadImage("4s8.png");
    s4_9 = loadImage("4s9.png");
  }
  void draw() {
    oldGuy.position.x= constrain(oldGuy.position.x, -3150, 1030);
    image(classroomdoor, matrixX-1080*3, 0);
    image(classroom, matrixX, 0);
    image(classroom, matrixX-1080, 0);
    image(classroom, matrixX-1080*2, 0);
    image(classroom, matrixX-1080*4, 0);
    image(sangbans[0], matrixX, 230);
    image(sangbans[1], matrixX-1080-950, 230);
    image(sangbans[2], matrixX-1080+150, 230);
    image(portals[frameCount%6], matrixX+680, 200, 600, 600);
    image(portals[frameCount%6], matrixX-3380, 200, 600, 600);
    image(slot, 700, 550-479);
    image(cake3, cakeX3-36, 568-479);
    blocks[0] = new Block(-10000, 687, 20*width, 1000);
    oldGuy.updateOldGuy(blocks, matrixX, matrixY);


    if (oldGuy.position.x<190 &&oldGuy.position.x>-95) {

      if (m4count0 ==0 ) {
        image(s4_1, width/10, 5);
      }
      if (m4count0 ==1 ) {
        image(s4_2, width/10, 5);
      }
      if (m4count0 ==2 ) {
        image(s4_3, width/10, 5);
      }
    }
    if (oldGuy.position.x<-1445 &&oldGuy.position.x>-1860) {
      if (m4count1 ==0) {
        image(s4_4, width/10, 5);
      }
      if (m4count1 ==1) {
        image(s4_5, width/10, 5);
      }
      if (m4count1 ==2) {
        image(s4_6, width/10, 5);
      }
    }
    if (oldGuy.position.x<-410 &&oldGuy.position.x>-960) {
      if (m4count2 ==0) {
        image(s4_7, width/10, 5);
      }
      if (m4count2 ==1) {
        image(s4_8, width/10, 5);
      }
      if (m4count2 ==2) {
        image(s4_9, width/10, 5);
      }
    }


    image(frame, 0, 0, 1080, 720);

    if (oldGuy.position.x > 500 && oldGuy.position.y > 100) {
      matrixX = 0;
      matrixY = 0;
    } else if (oldGuy.position.x  < 500 &&  oldGuy.position.y > 100) {
      matrixX = 500 - oldGuy.position.x ;
      matrixY = 0;
    } else if (oldGuy.position.x <500 &&oldGuy.position.y < 100) {
      matrixX = 500 - oldGuy.position.x ;
      matrixY = 100 - oldGuy.position.y;
    } else if (oldGuy.position.x  >500 &&oldGuy.position.y < 100) {
      matrixX = 0;
      matrixY = 100 - oldGuy.position.y;
    }

    oldGuy.size= new PVector(160, 400);
    if (oldGuy.direction == -1 && oldGuy.jumped ==false && oldGuy.intersect== false) {
      oldGuy.image= oldGuy.lefts[(frameCount/7)%8];
      oldGuy.size= new PVector(210, 400);
    } else if (oldGuy.direction == 1 && oldGuy.jumped ==false && oldGuy.intersect== false) {
      oldGuy.image= oldGuy.rights[(frameCount/7)%8];
      oldGuy.size= new PVector(210, 400);
    } else if (oldGuy.direction == -1 && oldGuy.jumped ==true && oldGuy.intersect== false) {
      oldGuy.image= oldGuy.jumps[1];
      oldGuy.size= new PVector(260, 400);
    } else if (oldGuy.direction == 1 && oldGuy.jumped ==true && oldGuy.intersect== false) {
      oldGuy.image= oldGuy.jumps[3];
      oldGuy.size= new PVector(260, 400);
    }
    if ( oldGuy.direction == -1 && oldGuy.velocity.y > 5 && oldGuy.intersect== false) {
      oldGuy.image= oldGuy.jumps[0];
      oldGuy.size= new PVector(330, 400);
    }
    if ( oldGuy.direction == 1 && oldGuy.velocity.y > 5 && oldGuy.intersect== false) {
      oldGuy.image= oldGuy.jumps[2];
      oldGuy.size= new PVector(330, 400);
    }
    if (oldGuy.position.x<=-3000) {
      if (keyPressed) {
        if (keyCode == CONTROL) {
          map=5;
          oldGuy.position.x=1570;
          oldGuy.image= oldGuy.images[0];
          matrixX=0;
          oldGuy.size = new PVector(80, 200);
          oldGuy.position.y= 687-oldGuy.size.y;
        }
      }
    }
  }
}