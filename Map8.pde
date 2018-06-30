class Map8 {
  PImage s8_1;
  PImage s8_2;
  PImage s8_3;
  PImage s8_4;
  PImage s8_5;
  PImage s8_6;
  PImage slot;
  PImage farmpeople;
  PImage farmwoman;
  PImage farmbefore;
  PImage  frame;
  Map8() {
    farmbefore = loadImage("farmbefore.png");
    slot = loadImage("herostone1.png");

    s8_1 = loadImage("8s1.png");
    s8_2 = loadImage("8s2.png");
    s8_3 = loadImage("8s3.png");
    s8_4 = loadImage("8s4.png");
    s8_5 = loadImage("8s5.png");
    s8_6 = loadImage("8s6.png");
    farmpeople = loadImage("farmpeople.png");
    farmwoman = loadImage("farmwoman.png");
    frame= loadImage("frame.png");
  }


  void draw() {
    blocks[0] = new Block(-10000, 655, 20*width, 1000);


    image(farmbefore, matrixX, 0);
    image(farmpeople, 100, 500, 200, 200);
    image(farmwoman, 400, 470, 130, 200);
    image(slot, 720, 550-479);
    if (oldGuy.position.x<535 &&oldGuy.position.x>385) {
      if (m8count0 ==0 ) {
        image(s8_1, width/10, 5);
      }
      if (m8count0 ==1 ) {
        image(s8_2, width/10, 5);
      }
      if (m8count0 ==2 ) {
        image(s8_3, width/10, 5);
      }
      if (m8count0 ==3 ) {
        image(s8_4, width/10, 5);
      }
      if (m8count0 ==4 ) {
        image(s8_5, width/10, 5);
      }
      if (m8count0 ==5 ) {
        image(s8_6, width/10, 5);
      }
    }


    oldGuy.position.x= constrain(oldGuy.position.x, 220, 1000);
    image(frame, 0, 0, 1080, 720);
    oldGuy.updateOldGuy(blocks, matrixX, matrixY);
    oldGuy.image= oldGuy.images[1];

    //    if (oldGuy.position.x<470 &&oldGuy.position.x>200) {
    //      image(message, width/10, 5);
    //    }



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
    if (keyPressed) {
      if (keyCode == CONTROL) {
        map=9;
        oldGuy.position.x=970;
        oldGuy.position.y=250;
        matrixX=0;
        matrixY=0;
      }
    }
  }
}