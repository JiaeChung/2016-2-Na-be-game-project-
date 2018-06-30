
class Map11 {
  PImage fisher;
  PImage riverpolluted;
  PImage  frame;
  PImage s11_1;
  PImage s11_2;
  PImage s11_3;
  PImage s11_4;
  PImage s11_5;
  PImage s11_6;
  PImage s11_7;
  PImage s11_8;
  PImage herostone2;

  Map11() {

    riverpolluted = loadImage("riverpolluted.png");   
    herostone2= loadImage("herostone2.png");
    frame = loadImage("frame.png");
    fisher = loadImage("fisher.png");
    s11_1 = loadImage("9s1.png");
    s11_2 = loadImage("9s2.png");
    s11_3 = loadImage("9s3.png");
    s11_4 = loadImage("9s4.png");
    s11_5 = loadImage("9s5.png");
    s11_6 = loadImage("9s6.png");
    s11_7 = loadImage("9s7.png");
    s11_8 = loadImage("9s8.png");
  }

  void draw() {
    blocks[0] = new Block(-10000, 480, 20*width, 1000);
    image(riverpolluted, 0, 0);
    image(fisher, 100, 200, 100, 200);
    oldGuy.position.x= constrain(oldGuy.position.x, 220, 1000);
    oldGuy.updateOldGuy(blocks, matrixX, matrixY);
    oldGuy.walkSpeed=5;
    oldGuy.jumpSpeed=0;
    image(herostone2, 720, 550-479);
    image(frame, 0, 0, 1080, 720);

    //    if (oldGuy.position.x<470 &&oldGuy.position.x>200) {
    //      image(message, width/10, 5);
    //    }

    if (oldGuy.position.x<240 &&oldGuy.position.x>180) {
      if (m11count0 ==0 ) {
        image(s11_1, width/10, 5);
      }
      if (m11count0 ==1 ) {
        image(s11_2, width/10, 5);
      }
      if (m11count0 ==2 ) {
        image(s11_3, width/10, 5);
      }
      if (m11count0 ==3 ) {
        image(s11_4, width/10, 5);
      }
      if (m11count0 ==4 ) {
        image(s11_5, width/10, 5);
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

    if (oldGuy.position.x<50020 && oldGuy.position.x>-9120 && m11count0 >=4) {
      if (keyPressed) {
        if (keyCode == CONTROL ) {
          map=12;
          oldGuy.position.x=970;
          oldGuy.position.y=100;
          oldGuy.image= oldGuy.images[0];
          matrixX=0;
          matrixY=0;
        }
      }
    }
  }
}