class Map13 {

  PImage street;
  PImage oldmen;
  PImage tree;
  int bup=0;
  PImage endingcave;
  PImage endingmiro;
  PImage ending1;
  PImage ending2;
  PImage ending3;
  PImage button1;
  PImage button2;
  PImage button3;
  PImage endingwall1;
  PImage endingwall2;
  PImage endingwall3;
  PImage endingwall4;
  PImage insideballoon;
  PImage sb;
  PImage choices;
  PImage syllabus1;
  PImage syllabus2;
  PImage syllabus3;
  PImage syllabus4;
  PImage syllabus5;
  float sbypos= 800;
  float sbspeed= 0.5;



  PImage message;
  PImage  frame;
  PImage s14_1;
  PImage s14_2;
  PImage s14_3;
  PImage s14_4;
  PImage s14_5;
  PImage s14_6;
  boolean ending= false;
  PImage herostone3;

  Map13() {
    endingcave= loadImage("endingcave.png");
    endingmiro= loadImage("endingmiro.png");
    ending1= loadImage("ending1.png");
    ending2= loadImage("ending2.png");
    ending3= loadImage("ending3.png");
    button1= loadImage("button1.png");
    button2= loadImage("button2.png");
    button3= loadImage("button3.png");
    endingwall1= loadImage("endingwall1.png");
    endingwall2= loadImage("endingwall2.png");
    endingwall3= loadImage("endingwall3.png");
    endingwall4= loadImage("endingwall4.png");
    insideballoon= loadImage("insideballoon.png");
    sb= loadImage("small.png");
    choices= loadImage("choices.png");
    syllabus1=loadImage("11s1.png");
    syllabus2=loadImage("11s2.png");
    syllabus3=loadImage("12s1.png");
    syllabus4=loadImage("12s2.png");
    syllabus5=loadImage("12s3.png");
    herostone3= loadImage("herostone3.png");
    frame = loadImage("frame.png");
    street= loadImage("street.png");
    oldmen= loadImage("oldmen.png");
    tree= loadImage("tree.png");
    message =loadImage("message.png");
    s14_1 = loadImage("10s1.png");
    s14_2 = loadImage("10s2.png");
    s14_3 = loadImage("10s3.png");
    s14_4 = loadImage("10s4.png");
    s14_5 = loadImage("10s5.png");
    s14_6 = loadImage("10s6.png");
  }

  void draw() {
    blocks[0] = new Block(-10000, 640, 20*width, 1000);
    image(street, matrixX, 0);
    image(tree, matrixX, 0);
    image(oldmen, matrixX+200, 400);
    image(herostone3, 720, 550-479);

    if (oldGuy.position.x<380 &&oldGuy.position.x>228) {
      if (m14count0 ==0 ) {
        image(s14_1, width/10, 5);
      }
      if (m14count0 ==1 ) {
        image(s14_2, width/10, 5);
      }
      if (m14count0 ==2 ) {
        image(s14_3, width/10, 5);
      }
      if (m14count0 ==3 ) {
        image(s14_4, width/10, 5);
      }
      if (m14count0 ==4 ) {
        image(s14_5, width/10, 5);
      }
      if (m14count0 ==5 ) {
        image(s14_6, width/10, 5);
      }
    }



    oldGuy.position.x= constrain(oldGuy.position.x, 220, 1000);
    oldGuy.updateOldGuy(blocks, matrixX, matrixY);
    image(frame, 0, 0, 1080, 720);

    //if (oldGuy.position.x<470 &&oldGuy.position.x>200) {
    //  image(message, width/10, 5);

    //}




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
      if (keyCode == CONTROL && m14count0>= 5) {
        map = 14;
        oldGuy.position.x=970;
        matrixX=0;
        matrixY=0;
      }
    }
    if(ending){            
       rectMode(CORNER);
       blind++;
        fill(0, 0, 0, 255-blind);
        rect(0, 0, width, height);

      }
    
    /*   switch(ending) {
     case 0: 
     blind++;
     image(endingcave, 0, 0, 1080, 720);
     image(herostone3, 720, 550-479);
     oldGuy.position.x= constrain(oldGuy.position.x, 220, 1000);
     oldGuy.updateOldGuy(blocks, matrixX, matrixY);
     if (endingcount>=0) {
     image(syllabus1, width/10, 200);
     }
     rectMode(CORNER);
     fill(0, 0, 0, 255-blind);
     rect(0, 0, width, height);
     
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
     }
     
     if (keyCode== CONTROL && oldGuy.position.x<520) {
     ending= 1;
     }
     break;
     
     case 1:
     image(endingwall1, 0, matrixY, 1080, 720);
     image(endingwall2, 0, matrixY-1080, 1080, 720);
     image(endingwall3, 0, matrixY-1080*2, 1080, 720);
     image(endingwall4, 0, matrixY-1080*3, 1080, 720);
     pushMatrix();
     translate(matrixX, matrixY);
     sbypos -= sbspeed;
     sbypos= constrain(sbypos, 720, -3000);
     image(sb, width/2, sbypos);
     popMatrix();
     if (sbypos < 300) {
     matrixY = 300- sbypos;
     } else if (sbypos>=300) {
     matrixY=0;
     }
     break;
     } */
  }
}