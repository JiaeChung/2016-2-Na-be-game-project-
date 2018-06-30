class Map2 {
  int stage=0;
  int transparent=0;
  int page = 0;
  boolean page_start = false;
  int y;

  float cakeX1=720;
  float cakeX2=810;
  float cakeX3=905;
  float matrixX;
  float matrixY;
  PImage farview;
  PImage house;
  PImage street;
  PImage mom;
  PImage ruins;
  PImage oldmen;
  PImage tree;
  PImage[] portals= new PImage [6];
  PImage portal0;
  PImage portal1;
  PImage portal2;
  PImage portal3;
  PImage portal4;
  PImage portal5;
  PImage portal6;
  PImage message;
  PImage  frame;
  PImage ex10;
  PImage ex11;
  PImage ex12;
  PImage cave1;
 PImage s2_1;
  PImage s2_2;
  PImage s2_3;
  PImage s2_4;
  PImage s2_5;
  PImage s2_6;
  PImage s2_7;
  PImage s2_8;
  PImage s2_9;
  PImage s2_10;
  PImage s2_11;
  PImage s2_12;
  PImage s2_13;
  PImage s2_14;
  PImage s2_15;



  Map2() {
    
      s2_1 = loadImage("2s1.png");
    s2_2 = loadImage("2s2.png");
    s2_3 = loadImage("2s3.png");
    s2_4 = loadImage("2s4.png");
    s2_5 = loadImage("2s5.png");
    s2_6 = loadImage("2s6.png");
    s2_7 = loadImage("2s7.png");
    s2_8 = loadImage("2s8.png");
    s2_9 = loadImage("2s9.png");
    s2_10 = loadImage("2s10.png");
    s2_11 = loadImage("2s11.png");
    s2_12 = loadImage("2s12.png");
    s2_13 = loadImage("2s13.png");
    s2_14 = loadImage("2s14.png");
    s2_15 = loadImage("2s15.png");


    y =73;
    size(1078, 720);
    ex10 = loadImage("ex10.png");
    ex11 = loadImage("ex11.png");
    ex12 = loadImage("ex12.png");
    cave1 = loadImage("cavee.png");
    frame = loadImage("frame.png");
    house= loadImage("playerhouse.png");
    farview= loadImage("village_tex.png");
    street= loadImage("street.png");
    mom= loadImage("mom.png");
    ruins= loadImage("ruins.png");
    oldmen= loadImage("oldmen.png");
    tree= loadImage("tree.png");
    portals[0]= loadImage("portal1.png");
    portals[1]= loadImage("portal2.png");
    portals[2]= loadImage("portal3.png");
    portals[3]= loadImage("portal4.png");
    portals[4]= loadImage("portal5.png");
    portals[5]= loadImage("portal6.png");
    message =loadImage("message.png");
    ropes= new Rope[2];

    //cake= new Cake[4];
    //cake[0] = new Cake();
    //cake[1] = new Cake();
    //cake[2] = new Cake();
    //cake[3] = new Cake();

    ropes[0] = new Rope(5000, 50, 20, 200);
    ropes[1]= new Rope(8000, 100, 30, 250);


    oldGuy = new OldGuy();
    blocks = new Block[4];
    blocks[0] = new Block(-10000, 700, 2*width, 1000);
    blocks[1] = new Block(8000, 700, 50, 50);
    blocks[2] = new Block(7000, 500, 50, 50);
    blocks[3] = new Block(4000, 400, 50, 50);

    NPC = new NPC[3];
    NPC[0] = new NPC(100, 600, 50, 100, 100);
    NPC[1] = new NPC(500, 600, 50, 100, 100);
    NPC[2] = new NPC(800, 600, 50, 100, 100);

    dialogue = new Dialogue[3];

    dialogue[0] = new Dialogue();

    String[] s2 = new String[4];
    s2[0] = "Hi I'm NPC2";
    s2[1] = "Welcome";
    s2[2] = "What's your name?";
    s2[3] = "Bye!";
    dialogue[1] = new Dialogue(s2);



    String[] s3 = new String[3];
    s3[0] = "I'm NPC3";
    s3[1] = "Do you know me?";
    s3[2] = "See you";
    dialogue[2] = new Dialogue(s3);
  }

  void draw() {

    background(255);

    noFill();
    fill(0);
    for (int i=0; i<ropes.length; i++) {
      ropes[i].draw(matrixX, matrixY);
    }
    for (int i=0; i<blocks.length; i++) {
      blocks[i].draw(matrixX, matrixY);
    }

    switch(stage) {

    case 0: 

      matrixX =0;
      matrixY= 0; 
      blocks[0] = new Block(-10000, 640, 200*width, 1000);
      image(street, 0, 0);
      image(house, 250, 150);
      image(mom, 250, 440);
      oldGuy.updateOldGuy(blocks, matrixX, matrixY);
      image(frame, 0, 0, 1080, 720);
      oldGuy.image= oldGuy.images[1];
      oldGuy.position.y=640-oldGuy.size.y;
      oldGuy.position.x= constrain(oldGuy.position.x, 0, 1030);
      oldGuy.position.x= 140;
      oldGuy.velocity.x= 0;
      oldGuy.direction= 0;
      transparent++;
      fill(0, 0, 0, 255-transparent);
      rect(0, 0, width, height);
      noFill();
      if (mousePressed) {
        stage= 1;
      }
      break;
    case 1:
      blocks[0] = new Block(-10000, 640, 20*width, 1000);
      image(street, matrixX, 0);
      image(house, 250+matrixX, 150);
      image(mom, 250+matrixX, 440);
      image(street, matrixX-1080, 0);
      image(street, matrixX-1080*2, 0);
      image(street, matrixX-1080*3, 0);
      image(street, matrixX-1080*4, 0);
      image(street, matrixX-1080*5, 0);
      image(ruins, matrixX-1080*2, 200);
      image(tree, matrixX-1080*4, 0);
      image(oldmen, matrixX-1080*4+200, 400);
      image(portals[(frameCount/5)%6], matrixX-1080*5+200, 400);
      oldGuy.position.x= constrain(oldGuy.position.x, -1080*5+300, 150);
      oldGuy.updateOldGuy(blocks, matrixX, matrixY);
      image(frame, 0, 0, 1080, 720);
      oldGuy.image= oldGuy.images[1]; 
      //image(slot, 700, 50);
      //image(cake1, 720, y);
      //image(cake2, 810, y);
      //image(cake3, 905, y);


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



      //   대화 넣어야 하는 부분
  
        if (oldGuy.position.x<=150 &&oldGuy.position.x>70) {
        if (m2count0 ==0) {
          image(s2_1, width*0.1, 5);
        }
        if (m2count0 ==1) {
          image(s2_2, width*0.1, 5);
        }
        if (m2count0 ==2) {
          image(s2_3, width*0.1, 5);
        }
        if (m2count0 ==3) {
          image(s2_4, width*0.1, 5);
        }
      }
      if (m2count0 >=3) {
        image(slot, 700, 550);
        image(cake1, cakeX1-5, 568);
        image(cake2, cakeX2-17, 568);
        image(cake3, cakeX3-36, 568);
      }

      if (oldGuy.position.x<-1794 &&oldGuy.position.x>-1990) {
        if (m2count1 ==0) {
          image(s2_5, width*0.1, 5);
        }
        if (m2count1 ==1) {
          image(s2_6, width*0.1, 5);
        }
        if (m2count1 ==2) {
          image(s2_7, width*0.1, 5);
         
        }
        if (m2count1 ==3) {
          image(s2_8, width*0.1, 5);
           cakeX3=10000;
        }
      }

      if (oldGuy.position.x<-3906 &&oldGuy.position.x>-4086) {
        if (m2count2 ==0) {
          image(s2_9, width*0.1, 5);
        }
        if (m2count2 ==1) {
          image(s2_10, width*0.1, 5);
        
        }
        if (m2count2 ==2) {
          image(s2_11, width*0.1, 5);
        }
        if (m2count2 ==3) {
          image(s2_12, width*0.1, 5);
        }
        if (m2count2 ==4) {
          image(s2_13, width*0.1, 5);
            cakeX2= 10000;
        }
        if (m2count2 ==5) {
          image(s2_14, width*0.1, 5);
        }
        if (m2count2 ==6) {
          image(s2_15, width*0.1, 5);
        }
      }


  
  
  


      if (oldGuy.position.x<=-5020&& oldGuy.position.x>=-5100) {
        if (keyPressed) {
          if (keyCode == CONTROL&& cakeX2== 10000 && cakeX3 ==10000) {
            map=3;
            oldGuy.position.x=970;
            oldGuy.image= oldGuy.images[0];
          }
        }
      }





      break;
    }


    if (oldGuy.intersect) {
      oldGuy.image= oldGuy.climbs[1];
      oldGuy.size= new PVector(70, 170);
      if (keyPressed) {
        if (key==' ') {
          oldGuy.position.y -= 1; 
          oldGuy.image= oldGuy.climbs[(frameCount/10)%4];
        }
      }
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
  }

  void mousePressed() {
    for (int i=0; i<NPC.length; i++) {
      if (oldGuy.intersect(NPC[i])) {
        dialogue[i].mousePressed();
      }
    }
  }

  void keyPressed() {
    oldGuy.keyPressed();
  }


  void keyReleased() {
    oldGuy.keyReleased();
  }
}