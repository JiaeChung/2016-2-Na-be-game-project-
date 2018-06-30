class Map7 {
  PImage street;
  PImage oldmen;
  PImage tree;
  PImage message;
  PImage  frame;
  PImage s7_1;
  PImage s7_2;
  PImage s7_3;
  PImage s7_4;
  PImage s7_5;
  PImage s7_6;
  PImage s7_7;
  PImage s7_8;
  PImage s7_9;
  PImage s7_10;
  PImage s7_11;
  PImage s7_12;
  PImage slot;
  Map7() {

    s7_1 = loadImage("7s1.png");
    s7_2 = loadImage("7s2.png");
    s7_3 = loadImage("7s3.png");
    s7_4 = loadImage("7s4.png");
    s7_5 = loadImage("7s5.png");
    s7_6 = loadImage("7s51.png");
    s7_7 = loadImage("7s6.png");
    s7_8 = loadImage("7s7.png");
    s7_9 = loadImage("7s8.png");
    s7_10 = loadImage("7s9.png");
    s7_11 = loadImage("7s10.png");
    s7_12 = loadImage("7s11.png");
    frame = loadImage("frame.png");
    street= loadImage("street.png");
    oldmen= loadImage("oldmen.png");
    tree= loadImage("tree.png");
    message =loadImage("message.png");
    slot = loadImage("herostone1.png");
  }



  void draw() {
    blocks[0] = new Block(-10000, 640, 20*width, 1000);
    image(street, matrixX, 0);
    image(tree, matrixX, 0);
    image(oldmen, matrixX+200, 400);


    oldGuy.position.x= constrain(oldGuy.position.x, 200, 1000);
    oldGuy.updateOldGuy(blocks, matrixX, matrixY);

    oldGuy.image= oldGuy.images[1];
    image(slot, 720, 550-479);

    if (oldGuy.position.x<470 &&oldGuy.position.x>200) {
      if (m7count0 ==0) {
        image(s7_1, width/10, 5);
      }
      if (m7count0 ==1) {
        image(s7_2, width/10, 5);
      }
      if (m7count0 ==2) {
        image(s7_3, width/10, 5);
      }
      if (m7count0 ==3) {
        image(s7_4, width/10, 5);
      }
      if (m7count0 ==4) {
        image(s7_5, width/10, 5);
      }
      if (m7count0 ==5) {
        image(s7_6, width/10, 5);
      }
      if (m7count0 ==6) {
        image(s7_7, width/10, 5);
      }
      if (m7count0 ==7) {
        image(s7_8, width/10, 5);
      }
      if (m7count0 ==8) {
        image(s7_9, width/10, 5);
      }
      if (m7count0 ==9) {
        image(s7_10, width/10, 5);
      }
      if (m7count0 ==10) {
        image(s7_11, width/10, 5);
      }
      if (m7count0 ==11) {
        image(s7_12, width/10, 5);
      }
    }
    image(frame, 0, 0, 1080, 720);




    if (oldGuy.position.x<470 &&oldGuy.position.x>200) {
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

    if (oldGuy.position.x<460 && oldGuy.position.x>200) {
      if (keyPressed) {
        if (keyCode == CONTROL) {
          map=8;
          oldGuy.position.x=970;
          oldGuy.image= oldGuy.images[0];
          matrixX=0;
        }
      }
    }
  }
}