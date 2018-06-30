class Map5 {

  PImage  frame;
  PImage[] portals= new PImage [6];
  PImage portal0;
  PImage portal1;
  PImage portal2;
  PImage portal3;
  PImage portal4;
  PImage portal5;
  PImage notice;
  PImage bush1;
  PImage bush2;
  PImage bush3;
  PImage hungrybird;
  PImage cake3;
  float cakeX3=905;

  int challenge;

  float spikeX1=-2000;
  float spikeY1=800;
  float spikeX2=-3500;
  float spikeY2=400;
  float spikeX3=-4400;
  float spikeY3=0;
  float spikeX4=-6600;
  float spikeY4=500;

  float birdX=matrixX+0;
  float birdY=height/2;
  float xspeed=5;
  float yspeed1= 3;
  float yspeed2= 3;
  float yspeed3= 2;
  float yspeed4= 3;

  PImage forestcliff;
  PImage school;

  int clickCount;
  int w, h;
  float x;
  float y;

  PImage[] spikes= new PImage[4];
  PImage[] bgs= new PImage[6];
  PImage[] huddles= new PImage[6];
  PImage bird1;
  PImage bird2;
  PImage bird3;
  PImage bird4;
  boolean hungry= true;

  PImage s5_1;
  PImage s5_2;
  PImage s5_3;
  PImage s5_4;
  PImage s5_5;
  PImage s5_6;
  PImage s5_7;
  PImage s5_8;
  PImage s5_9;
  PImage s5_10;
  PImage s5_11;
  PImage s5_12;

  PImage slot;
  PImage cake1;
  PImage cake2;
  //PImage cake3;

  //float cakeX3=905;

  Map5() {

    challenge =0;
    herostone= loadImage("herostone.png");
    slot =loadImage("slot.png");
    cake3= loadImage("cake3.png");
    bird1= loadImage("bird.png");
    bird2= loadImage("bird.png");
    bird3= loadImage("bird.png");
    bird4= loadImage("bird.png");
    school= loadImage("school.png");
    hungrybird= loadImage("hungrybird.png");
    forestcliff = loadImage("forestcliff.png");
    frame = loadImage("frame.png");
    portals[0]= loadImage("portal1.png");
    portals[1]= loadImage("portal2.png");
    portals[2]= loadImage("portal3.png");
    portals[3]= loadImage("portal4.png");
    portals[4]= loadImage("portal5.png");
    portals[5]= loadImage("portal6.png");
    bush1 =loadImage("bush1.png");
    bush2 =loadImage("bush2.png");
    bush3 =loadImage("bush3.png");
    notice =loadImage("notice.png");


    bgs[0]= loadImage("bg1.jpg");
    bgs[1]= loadImage("bg2.jpg");
    bgs[2]= loadImage("bg3.jpg");
    bgs[3]= loadImage("bg4.jpg");
    bgs[4]= loadImage("bg5.jpg");
    bgs[5]= loadImage("bg6.jpg");
    huddles[0] = loadImage("1.png");
    huddles[1] = loadImage("2.png");
    huddles[2] = loadImage("3.png");
    huddles[3] = loadImage("4.png");
    huddles[4] = loadImage("5.png");
    huddles[5] = loadImage("6.png");
    spikes[0]= loadImage("spike1.png");
    spikes[1]= loadImage("spike2.png");
    spikes[2]= loadImage("spike3.png");
    spikes[3]= loadImage("spike4.png");

    s5_1 = loadImage("5s1.png");
    s5_2 = loadImage("5s2.png");
    s5_3 = loadImage("5s3.png");
    s5_4 = loadImage("5s4.png");
    s5_5 = loadImage("5s5.png");
    s5_6 = loadImage("5s6.png");
    s5_7 = loadImage("5s7.png");
    s5_8 = loadImage("5s8.png");
    s5_9 = loadImage("5s9.png");
    s5_10 = loadImage("5s10.png");
    s5_11 = loadImage("5s11.png");
    s5_12 = loadImage("5s12.png");


    ropes= new Rope[5];

    ropes[0] = new Rope(5000, 50, 20, 200);
    ropes[1]= new Rope(8000, 100, 30, 250);
    ropes[2]= new Rope(8000, 100, 30, 250);
    ropes[3]= new Rope(8000, 100, 30, 250);
    ropes[4]= new Rope(8000, 100, 30, 250);

    oldGuy = new OldGuy();
    blocks = new Block[13];
    blocks[0] = new Block(-10000, 700, 2*width, 1000);
    blocks[1] = new Block(80000, 700, 50, 50);
    blocks[2] = new Block(70000, 500, 50, 50);
    blocks[3] = new Block(40000, 400, 50, 50);
    blocks[4] = new Block(40000, 400, 50, 50);
    blocks[5] = new Block(40000, 400, 50, 50);
    blocks[6] = new Block(40000, 400, 50, 50);
    blocks[7] = new Block(40000, 400, 50, 50);
    blocks[8] = new Block(40000, 400, 50, 50);
    blocks[9] = new Block(40000, 400, 50, 50);
    blocks[10] = new Block(40000, 400, 50, 50);
    blocks[11]= new Block(40000, 400, 50, 50);
    blocks[12]= new Block(40000, 1000, 50, 50);

    clickCount = 0;
    w =140;
    h =100;
    x= matrixX+170;
    y= 625;
  }

  void draw() {


    noFill();
    fill(0);
    for (int i=0; i<ropes.length; i++) {
      ropes[i].draw(matrixX, matrixY);
    }
    for (int i=0; i<blocks.length; i++) {
      fill(255);
      blocks[i].draw(matrixX, matrixY);
      noFill();
    }


    //  image(notice, matrixX+150, 550, 100, 120);

    //  imageMode(CENTER);
    //  image(bush1, x, y, w-clickCount*3, h-clickCount*3);
    //  image(bush2, x+70, y, w-clickCount, h-clickCount);
    //  image(bush3, x+130, y, w-clickCount*2, h-clickCount*2);
    //  imageMode(CORNER);
    // if (mousePressed &&mouseX>matrixX+140 &&mouseX<matrixX+280 ) {
    //    clickCount++; 
    //    if (clickCount>=30) {
    //      clickCount=30;
    //      x= 10000;
    //      y=6000;
    //    }
    //  } 

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







    image(forestcliff, matrixX, 0);
    image(school, matrixX+780, 0);
    image(forestcliff, matrixX-1080, 0);
    image(bgs[0], matrixX-1080*2, 0);
    image(bgs[1], matrixX-1080*3, 0);
    image(bgs[2], matrixX-1080*4, 0);
    image(bgs[3], matrixX-1080*5, 0);
    image(bgs[4], matrixX-1080*6, 0);
    image(bgs[5], matrixX-1080*7, 0);
    image(notice, matrixX+150, 550, 100, 120);

    imageMode(CENTER);
    image(bush1, matrixX+230, y, w-clickCount*3, h-clickCount*3);
    image(bush2, matrixX+70, y, w-clickCount, h-clickCount);
    image(bush3, matrixX+130, y, w-clickCount*2, h-clickCount*2);
    imageMode(CORNER);

    //image(frame, 0, 0, 1080, 720);





    if (mousePressed &&mouseX>matrixX+140 &&mouseX<matrixX+280 ) {
      clickCount++; 
      if (clickCount>=30) {
        clickCount=30;
        x= 10000;
        y=6000;
      }
    } 
    if (clickCount<30) {
      oldGuy.position.x= constrain(oldGuy.position.x, 0, 370);
    } else if (clickCount>=30) {
      oldGuy.position.x= constrain(oldGuy.position.x, -7320, 1030);
    }

    pushMatrix();
    imageMode(CENTER);
    translate(matrixX, matrixY);
    image(spikes[0], spikeX1, spikeY1);
    image(spikes[1], spikeX2, spikeY2);
    image(spikes[2], spikeX3, spikeY3);
    image(spikes[3], spikeX4, spikeY4);
    popMatrix();
    imageMode(CORNER);
    image(huddles[0], matrixX-1080*2, 0);
    image(huddles[1], matrixX-1080*3, 0);
    image(huddles[2], matrixX-1080*4, 0);
    image(huddles[3], matrixX-1080*5, 0);
    image(huddles[4], matrixX-1080*6, 0);
    image(huddles[5], matrixX-1080*7, 0);
    image(hungrybird, matrixX-7350, 400);



    //   for (int i=0; i<blocks.length; i++) {
    //    blocks[i].draw(matrixX, matrixY);
    // }
    //for (int i=0; i<ropes.length; i++) {
    // ropes[i].draw(matrixX, matrixY);
    // }

    fill(255);
    blocks[0] = new Block(-1500, 687, 10*width, 100);
    pushMatrix();
    translate(-1700, 660);
    rotate(radians(-20));
    blocks[1]= new Block(-1700, 660, 200, 50);  
    popMatrix();
    blocks[2]= new Block(-1810, 640, 130, 50);
    blocks[3]= new Block(-2110, 600, 130, 50);   
    blocks[4]= new Block(-2370, 500, 130, 50);
    blocks[5]= new Block(-2660, 340, 128, 50);
    blocks[6]= new Block(-3760, 350, 500, 50);
    blocks[7]= new Block(-4200, 470, 175, 50);
    blocks[8]= new Block(-4800, 570, 200, 50);
    blocks[9]= new Block(-5560, 630, 480, 50);
    blocks[10]= new Block(-6350, 500, 400, 50);
    blocks[11]= new Block(-6680, 420, 200, 50);
    blocks[12]= new Block(-7330, 530, 350, 50);

    ropes[0]= new Rope(-2870, 30, 35, 550);
    ropes[1]= new Rope(-3080, 30, 35, 700);
    ropes[2]= new Rope(-4350, 90, 25, 250);
    ropes[3]= new Rope(-4500, 90, 40, 580);
    ropes[4]= new Rope(-5800, 120, 30, 500);

    //  if(oldGuy.position.y>700){
    //  oldGuy.position.x=matrixX+900;
    //  
    // }
    //  pushMatrix();
    // translate(matrixX-1400,matrixY+687);
    // rotate(radians(60));
    // blocks[1]=new Block(-2000,687,400,1000);
    // popMatrix();
    // blocks[1]= new Block(-2400,687,1200,1000);
    noFill();
    if (oldGuy.position.x > 200 && oldGuy.position.y > 0) {
      matrixX = 0;
      matrixY = 0;
    } else if (oldGuy.position.x  < 200 &&  oldGuy.position.y > 0) {
      matrixX = 200 - oldGuy.position.x ;
      matrixY = 0;
    } else if (oldGuy.position.x <200 &&oldGuy.position.y < 0) {
      matrixX = 200 - oldGuy.position.x ;
      matrixY = 0;
    } else if (oldGuy.position.x  >200 &&oldGuy.position.y < 0) {
      matrixX = 0;
      matrixY =  0;
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

    if (dist(oldGuy.position.x+oldGuy.size.x/2, oldGuy.position.y+oldGuy.size.y/2, -7220, 330)<50 ||m5count2 ==5) {
      hungry=false;
    }

    oldGuy.updateOldGuy(blocks, matrixX, matrixY);
    image(bird1, birdY, birdY/2, 150, 150);
    image(bird2, birdY*2, birdY/3, 150, 150);
    image(bird3, birdY*2/3, birdY/4, 150, 150);
    image(bird4, birdY+300, -birdY/2, 150, 150);
        image(cake3, cakeX3-36, 568-479);
    image(slot, 700, 550-479);
    image(frame, 0, 0, 1080, 720);

    if (oldGuy.position.x<1700 &&oldGuy.position.x>320) {
      if (m5count0 ==0 ) {
        image(s5_1, width/10, 5);
      }
      if (m5count0 ==1 ) {
        image(s5_2, width/10, 5);
      }
      if (m5count0 ==2 ) {
        image(s5_3, width/10, 5);
      }
    }

    if (clickCount>=25&& oldGuy.position.x<490 && oldGuy.position.x>18) {
      if (m5count1 ==0 ) {
        image(s5_4, width/10, 5);
      }
      if (m5count1 ==1 ) {
        image(s5_5, width/10, 5);
      }
      if (m5count1 ==2 ) {
        image(s5_6, width/10, 5);
      }
    }


    if (oldGuy.position.x<-7000 &&oldGuy.position.x>-8000) {
      if (m5count2 ==0 ) {
        image(s5_7, width/10, 5);
      }
      if (m5count2 ==1 ) {
        image(s5_8, width/10, 5);
        //cakeX1=10000;
      }
      if (m5count2 ==2 ) {
        image(s5_9, width/10, 5);
      }
      if (m5count2 ==4 ) {
        image(s5_10, width/10, 5);
      }
      if (m5count2 ==5 ) {
        image(s5_11, width/10, 5);
      }
      if (m5count2 ==6 ) {
        image(s5_12, width/10, 5);
      }
    }

    birdY += yspeed1+7;
    spikeY1 -= yspeed1;
    spikeY2 += yspeed2;
    spikeY3 += yspeed3;
    spikeY4 -= yspeed4;
    if (spikeY1>900 || spikeY1<200) {
      yspeed1= -yspeed1;
    }
    if (spikeY2>800 || spikeY2<200) {
      yspeed2= -yspeed2;
    }
    if (spikeY3>800 || spikeY3<0) {
      yspeed3= -yspeed3;
    }
    if (spikeY4>800 || spikeY4<200) {
      yspeed4= -yspeed4;
    }
    if (dist(oldGuy.position.x+oldGuy.size.x/2, oldGuy.position.y+oldGuy.size.y/2, spikeX1, spikeY1)<200) {
      oldGuy.position.x= 1000;
    } else if (dist(oldGuy.position.x+oldGuy.size.x/2, oldGuy.position.y+oldGuy.size.y/2, spikeX2, spikeY2)<200) {
      oldGuy.position.x= 1000;
    } else if (dist(oldGuy.position.x+oldGuy.size.x/2, oldGuy.position.y+oldGuy.size.y/2, spikeX3, spikeY3)<180) {
      oldGuy.position.x= 1000;
    } else if (dist(oldGuy.position.x+oldGuy.size.x/2, oldGuy.position.y+oldGuy.size.y/2, spikeX4, spikeY4)<200) {
      oldGuy.position.x= 1000;
    }
    if (oldGuy.intersect== false && oldGuy.position.y+oldGuy.size.y >800) {
      oldGuy.position.x= 1000;
      oldGuy.position.y= 660-oldGuy.size.y;
    }
    if (birdY>width+500) {
      birdY=-2000;
    }
    if (hungry==false) {
      image(portals[(frameCount/5)%6], matrixX-7350, 250);
      cakeX3= 50000;
      slot= loadImage("herostone1.png");
    }
    if (oldGuy.position.x<-7170 && oldGuy.position.x>-7310) {
      if (keyPressed) {
        if (keyCode == CONTROL && hungry== false) {
          map= 6;
          oldGuy.position.x=970;
          matrixX=0;
          matrixY=0;
          oldGuy.image= oldGuy.images[0];
        }
      }
    }
  }
}