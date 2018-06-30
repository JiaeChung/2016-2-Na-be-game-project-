import processing.video.*;
Movie myMovie;

Block[] blocks;
Rope[] ropes;
OldGuy oldGuy;
Timer timer = new Timer(5000);
Stone stone;

Dialogue[] dialogue;
Cake[] cake;
NPC[] NPC;
Map1 Map1;
Map2 Map2;
Map3 Map3;
Map4 Map4;
Map5 Map5;
Map6 Map6;
Map7 Map7;
Map8 Map8;
Map9 Map9;
Map10 Map10;
Map11 Map11;
//Map12 Map12;
Map13 Map13;

//Timer       timer2;
int endingcount= 0;
int m12count=0;
int blind=0;
int minicount=0;
int m2count0 =0;
int m2count1=0;
int m2count2=0;
int m4count0 =0;
int m4count1=0;
int m4count2=0;
int m5count0 =0;
int m5count1=0;
int m5count2=0;
int m6count0 =0;
int m7count0 =0;
int m8count0 =0;
int m11count0 =0;
int m14count0 =0;
Timer movieTimer;

int page = 0;
int map =1;
int stage = 0;
boolean page_start = false;
boolean map_start = false;
boolean river_fail= true;
float o2=100;
float herostoneX= 540;
boolean fishintersect= false;
PImage frame;
PImage fisherthanks;
PImage [] victoryDialogues;
PImage slot;
PImage herostone3;

float matrixX;
float matrixY;


PImage farview;
PImage house;
PImage street;
PImage NPC1;
PImage message;





import ddf.minim.*;
AudioSnippet piano;
AudioSnippet beateffect;
AudioSnippet victory;
AudioSnippet fail;
AudioSnippet faileffect;
AudioSnippet track1;
AudioSnippet track2;
AudioSnippet track3;

Minim minim;

// class

Catcher catcher;
Beatdrop[]  drops;

int totalDrops;
int score;
int failScore;
int game = 0;
PImage farmBefore;
PImage farmAfter;
PImage imgTree; 
PImage startDialogue;

PImage failDialogue;
PImage scoreBoard;

PFont lotteDream;  

boolean bgm;
boolean victoryBGM;
boolean failBGM;
PImage herostone;
float pollutantx0=0;
float pollutanty0=2300;
float pollutantx1=100;
float pollutanty1=500;
float pollutantx2=300;
float pollutanty2=1200;
float pollutantx3= 500;
float pollutanty3=1800;
float pollutantxspeed1 = random(2, 2);
float pollutantxspeed2 = random(2, 2);
float pollutantxspeed3 = random(2, 2);
float pollutantxspeed4 =random(2, 2);
float pollutantyspeed1 =random(2, 2);
float pollutantyspeed2 = random(2, 2);
float pollutantyspeed3 = random(2, 2);
float pollutantyspeed4 = random(2, 2);

float xspeed=5;
float yspeed1= 3;
float yspeed2= 3;
float yspeed3= 2;
float yspeed4= 3;
float fishx1_1= 0;
float fishx1_2= 0;
float fishx1_3= 0;
float fishx1_4= 0;
float fishx2_1= 0;
float fishx2_2= 0;
float fishx2_3= 0;
float fishx2_4= 0;
float fishx3_1= 0;
float fishx3_2= 0;
float fishx3_3= 0;
float fishx3_4= 0;
float life= 0;
PImage riverclean;
PImage herostoneclear;
PImage gobackhome;
PImage fish1s[] = new PImage[4];
PImage fish2s[] = new PImage[4];
PImage fish3s[] = new PImage[4];
PImage fisher1;
PImage[] swimups= new PImage[4];
PImage[] swimdowns= new PImage[4];
PImage[] swimuprights= new PImage[4];
PImage[] swimuplefts= new PImage[4];
PImage[] swimdownlefts= new PImage[4];
PImage[] swimdownrights= new PImage[4];
PImage[] rivergames = new PImage [5];
PImage[] pollutants= new PImage [4];
PImage cake1;
PImage cake2;
PImage cake3;
PImage mainstart;



void setup() {
  size(1078, 720);
  //house= loadImage("playerhouse.png");
  //farview= loadImage("village_tex.png");
  //street= loadImage("street.png");
  //NPC1= loadImage("old men.png");

  mainstart = loadImage("logo.png");

  Map1 = new Map1();
  Map2 = new Map2();
  Map3 = new Map3();
  Map4 = new Map4();
  Map5 = new Map5();
  Map6 = new Map6();
  Map7 = new Map7();
  Map8 = new Map8();
  Map9 = new Map9();
  Map10 = new Map10();
  Map11 = new Map11();
  //  Map12 = new Map12();

  Map13 = new Map13();

  herostoneclear= loadImage("9s6.png");
  frame= loadImage("frame.png");
  herostone3= loadImage("herostone3.png");
  farmBefore = loadImage("farmbefore.png");
  farmAfter = loadImage("farmafter.png");
  startDialogue = loadImage("startDialogue.png");
  victoryDialogues = new PImage[10];
  cake1= loadImage("cake1.png");
  cake2= loadImage("cake2.png");
  cake3= loadImage("cake3.png");
  failDialogue = loadImage("failDialogue.png");
  fisherthanks= loadImage("9s7.png");
  gobackhome= loadImage("9s8.png");
  scoreBoard = loadImage("scoreBoard.png");
  herostone= loadImage("herostone.png");
  riverclean= loadImage("riverclean.png");
  imgTree = loadImage("tree.png");
  fisher1= loadImage("fisher.png");
  lotteDream = loadFont("12LotteMartDreamBold-48.vlw");

  // music
  minim = new Minim(this);
  piano = minim.loadSnippet("piano.mp3");
  beateffect = minim.loadSnippet("beateffect.mp3");
  victory = minim.loadSnippet("victory.mp3");
  fail = minim.loadSnippet("fail.mp3");
  faileffect = minim.loadSnippet("faileffect.mp3");
  track1 = minim.loadSnippet("track1.mp3");
  track2 = minim.loadSnippet("track2.mp3");
  track3 = minim.loadSnippet("track3.mp3");
  slot= loadImage("slot.png");
  pollutants[0]= loadImage("pollutant.png");
  pollutants[1]= loadImage("pollutant.png");
  pollutants[2]= loadImage("pollutant.png");
  pollutants[3]= loadImage("pollutant.png");

  rivergames[0]= loadImage("rivergame1.png");
  rivergames[1]= loadImage("rivergame2.png");
  rivergames[2]= loadImage("rivergame3.png");
  rivergames[3]= loadImage("rivergame4.png");
  rivergames[4]= loadImage("rivergame5.png");
  swimups[0]= loadImage("up1.png");
  swimups[1]= loadImage("up2.png");
  swimups[2]= loadImage("up3.png");
  swimups[3]= loadImage("up4.png");
  swimuplefts[0]= loadImage("upleft1.png");
  swimuplefts[1]= loadImage("upleft2.png");
  swimuplefts[2]= loadImage("upleft3.png");
  swimuplefts[3]= loadImage("upleft4.png");
  swimuprights[0]= loadImage("upright1.png");
  swimuprights[1]= loadImage("upright2.png");
  swimuprights[2]= loadImage("upright3.png");
  swimuprights[3]= loadImage("upright4.png");
  swimdowns[0]= loadImage("down1.png");
  swimdowns[1]= loadImage("down2.png");
  swimdowns[2]= loadImage("down3.png");
  swimdowns[3]= loadImage("down4.png");
  swimdownlefts[0]= loadImage("downleft1.png");
  swimdownlefts[1]= loadImage("downleft2.png");
  swimdownlefts[2]= loadImage("downleft3.png");
  swimdownlefts[3]= loadImage("downleft4.png");
  swimdownrights[0]= loadImage("downright1.png");
  swimdownrights[1]= loadImage("downright2.png");
  swimdownrights[2]= loadImage("downright3.png");
  swimdownrights[3]= loadImage("downright4.png");
  fish1s[0]= loadImage("fish1.png");
  fish1s[1]= loadImage("fish1.png");
  fish1s[2]= loadImage("fish1.png");
  fish1s[3]= loadImage("fish1.png");
  fish2s[0]= loadImage("fish2.png");
  fish2s[1]= loadImage("fish2.png");
  fish2s[2]= loadImage("fish2.png");
  fish2s[3]= loadImage("fish2.png");
  fish3s[0]= loadImage("fish3.png");
  fish3s[1]= loadImage("fish3.png");
  fish3s[2]= loadImage("fish3.png");
  fish3s[3]= loadImage("fish3.png");



  //catchers = new Catcher[4];
  catcher = new Catcher(100);
  drops = new Beatdrop[1000];
  stone = new Stone();
  minicount =0;
  timer = new Timer(250);
  noStroke();
  timer.startTimer();
  totalDrops = 0;
  score = 0;
  failScore = 0;

  //movie
  myMovie = new Movie(this, "nabi.mp4");
  movieTimer = new Timer(143000);
}


void draw() {

  if (keyPressed) {
    if (key =='s') {
      map=1;
    }
    if (key == '2') {
      map=2;
    }

    if (key == '3') {
      map=3;
    }
    if (key == '4') {
      map=4;
    }
    if (key == '5') {
      map=5;
    }
    if (key == '6') {
      map=6;
    }
    if (key == '7') {
      map=7;
    }
    if (key == '8') {
      map=8;
    }
    if (key == '9') {
      map=9;
    }
    if (key == 'q') {
      map=10;
    }
    if (key == 'w') {
      map=11;
    } 
    if (key == 'e') {
      map=12;
    } 
    if (key == 'r') {
      map=13;
    }
    if (key == 't') {
      map=14;
    }
  }

  background(255);
  for (int i=0; i<ropes.length; i++) {
    ropes[i].draw(matrixX, matrixY);
  }
  for (int i=0; i<blocks.length; i++) {
    blocks[i].draw(matrixX, matrixY);
  }

  switch(map) {

  //case 0:
  //  image(mainstart, 0, 0); 

  case 1:
    track1.play();
    Map1.draw();
    break;

  case 2:
    track1.pause();
    track1.rewind();
    track2.play();
    Map2.draw();

    if (keyCode == SHIFT) {
      map++;
    }
    break;

  case 3:
    track2.pause();
    track2.rewind();
    track3.play();
    Map3.draw();
    break;

  case 4:
    Map4.draw();
    break;

  case 5:

    track3.play();
    Map5.draw();
    break;

  case 6: 
    track3.play();
    Map6.draw();
    break;

  case 7:

    track3.play();
    Map7.draw();
    break;

  case 8:
    track3.play();
    Map8.draw();
    break;

  case 9:
    track3.pause();
    track3.rewind();

    switch (game) {

      // first screen : GAME OPENING

    case 0: 
      victory.pause();
      victory.rewind();
      fail.pause();
      fail.rewind();


      // background
      image(farmBefore, 0, 0);


      // background_Title

      rectMode(CENTER);
      fill(0, 170);
      rect(width/2, height/2, width, height); 
      noFill();
      noStroke();
      image(imgTree, 0, 0);
      image(startDialogue, width/10, height/3);


      textFont(lotteDream);
      textAlign(CENTER);
      fill(255, 255, 0);
      //text("Fruit Game", width/2, height/4);
      noFill();
      break;


      // second screen : play

    case 1:

      // play music
      if (bgm == true) {   
        piano.play();
      } else piano.rewind();

      victory.pause();
      victory.rewind();
      fail.pause();
      fail.rewind();

      // background
      image(farmBefore, 0, 0);

      rectMode(CENTER);
      fill(0, 170);
      rect(width/2, height/2, width, height); 
      noFill();

      image(imgTree, 0, 0);
      image(scoreBoard, 4*width/5-50, height/2);


      // Main Game



      // set catcher's location
      // draw catcher

      //for (int i=0; i < catchers.length; i++) {
      //  catchers[i] = new Catcher();
      //  catchers[i].setLocation(width/8*(i+1)-width/16, height-100);
      //  catchers[i].display();
      //}

      catcher.setLocation(mouseX, mouseY);
      catcher.display();
      noCursor();



      // timer start
      if (timer.isFinished() && keyCode == ENTER ) {

        drops[totalDrops] = new Beatdrop();
        totalDrops++;
        //println("500 milliseconds have passed!");
        timer.startTimer();
      }

      // if totalDrops is bigger than array size set it 0
      if (totalDrops >= drops.length) {
        totalDrops = 0;
      }
      // move and display raindrops
      for (int i = 0; i < totalDrops; i++) {

        if (catcher.intersect(drops[i])) {
          drops[i].caught(); 
          score++;
          beateffect.play();
          beateffect.rewind();
        }

        //drops[i].setLocation(width/8*((i%4)+1)-width/16);

        if (totalDrops%7==0) {

          drops[i].move();
          drops[i].display0();
        } else if (totalDrops%7 ==1) {
          drops[i].move();
          drops[i].display1();
        } else if (totalDrops%7 ==2) {
          drops[i].move();
          drops[i].display2();
        } else if (totalDrops%7 ==3) {
          drops[i].move();
          drops[i].display3();
        } else if (totalDrops%7 == 4) {
          drops[i].move();
          drops[i].display4();
        } else if (totalDrops%7 == 5) {
          drops[i].move();
          drops[i].display5();
        } else if (totalDrops%7 == 6) {
          drops[i].move();
          drops[i].display6();
        }



        if (score > 50) {
          bgm = false;
          game=2; 
          score=0;
          victoryBGM = true;
        } else if (failScore > 5) {
          bgm = false;

          game=3; 
          failScore=0;
          failBGM = true;
        }

        // hp bar

        if (drops[i].y > height) {
          failScore++;
          drops[i].y = 0;
          faileffect.play();
          faileffect.rewind();
        }
      }

      fill(#FA3088);
      textSize(25);
      text(score, width-120, height/2+60);
      text(failScore, width-120, height/2+110);

      fill(0, 0, 255);
      rectMode(CORNER);
      rect(4*width/5, height/2+150, 130, 30);
      fill(255, 0, 0);
      rect(4*width/5, height/2+150, failScore*20, 30);


      break;

    case 2 : 
      piano.pause();
      piano.rewind();

      // background
      image(farmAfter, 0, 0);
      matrixX=0;
      matrixY=0;

      // background_Title
      pushMatrix();
      rectMode(CENTER);
      fill(0, 170);
      rect(width/2, height/2, width, height); 
      noFill();
      noStroke();
      rectMode(CORNER);
      popMatrix();


      for (int i=0; i < 5; i++) {
        if (minicount == i && minicount != 2 && minicount != 3) {
          victoryDialogues[i] = loadImage("victoryDialogue"+i+".png");
          image(victoryDialogues[i], width/10, height/3);
        } else if (minicount ==2) {
          stone.gravity();
          stone.move();
          stone.display();
        } else if (minicount ==3) {
          victoryDialogues[3] = loadImage("victoryDialogue3.png");
          imageMode(CENTER);
          image(victoryDialogues[3], width/2, height/2);
          imageMode(CORNER);
        }
      }



      //fill(255,255,0);
      //textSize(100);
      //image(victoryDialogue, width/10, height/3);



      if (victoryBGM == true) {    
        victory.play();
      } else victory.rewind();


      break;

    case 3 : 
      piano.pause();
      piano.rewind();
      // background
      image(farmBefore, 0, 0);

      // background_Title

      rectMode(CENTER);
      fill(0, 170);
      rect(width/2, height/2, width, height); 
      noFill();
      noStroke();

      fill(255, 255, 0);
      textSize(100);
      image(failDialogue, width/10, height/3);


      if (failBGM == true) {    
        fail.play();
      } else fail.rewind();



      break;

    default:
    }
    image(frame, 0, 0, 1080, 720);

    break;


  case 10:
    victory.pause();
    victory.rewind();
    Map10.draw();
    image(frame, 0, 0, 1080, 720);

    break;

  case 11:
    Map11.draw();
    image(frame, 0, 0, 1080, 720);
    break;


  case 12:

    if (oldGuy.position.y <= 150) {
      matrixY = 150-oldGuy.position.y;
    } else if (oldGuy.position.y>=400) {
      matrixY= 400-oldGuy.position.y;
    }
    blocks[0] = new Block(-1700, -53350, 10*width, 100);
    blocks[1]= new Block(-1700, -50000, 200, 50);  
    blocks[2]= new Block(-1810, -64000, 130, 50);
    blocks[3]= new Block(-2110, -60000, 130, 50);   
    blocks[4]= new Block(-2370, -50000, 130, 50);
    blocks[5]= new Block(-2660, -34000, 128, 50);
    blocks[6]= new Block(-3760, -35000, 500, 50);
    blocks[7]= new Block(-4200, -47000, 175, 50);
    blocks[8]= new Block(-4800, -57000, 200, 50);
    blocks[9]= new Block(-5560, -63055, 480, 50);
    blocks[10]= new Block(-6350, -50210, 400, 50);
    blocks[11]= new Block(-6680, -42120, 200, 50);
    blocks[12]= new Block(-7330, -53120, 350, 50);
    oldGuy.jumpSpeed= 10;
    oldGuy.walkSpeed= 2;
    life ++;
    image(rivergames[4], 0, matrixY-720);
    image(rivergames[4], 0, matrixY);
    image(rivergames[3], 0, matrixY+720);
    image(rivergames[2], 0, matrixY+720*2);
    image(rivergames[1], 0, matrixY+720*3);
    image(rivergames[0], 0, matrixY+720*4);
    for (int i=0; i<fish1s.length; i++) {
      fishx1_1 += 2;
      fishx1_2 += 2;
      fishx1_3 += 2;
      fishx1_4 +=2;
    }
    for (int i=0; i<fish1s.length; i++) {
      fishx2_1 += 1;
      fishx2_2 += 1;
      fishx2_3 +=1;
      fishx2_4 += 1;
    }
    for (int i=0; i<fish1s.length; i++) {
      fishx3_1 += 3;
      fishx3_2 += 3;
      fishx3_3 += 3;
      fishx3_4 += 3;
    }
    imageMode(CENTER);
    image(fish1s[0], fishx1_1, matrixY+600, 100, 100);
    image(fish1s[1], fishx1_2, matrixY+1200, 100, 100);
    image(fish1s[2], fishx1_3, matrixY+1800, 100, 100);
    image(fish1s[3], fishx1_4, matrixY+2300, 100, 100);
    image(fish2s[0], fishx2_1, matrixY+2900, 100, 100);
    image(fish2s[1], fishx2_2, matrixY+800, 100, 100);
    image(fish2s[2], fishx2_3, matrixY+1250, 100, 100);
    image(fish2s[3], fishx2_4, matrixY+1600, 100, 100);
    image(fish3s[0], fishx3_1, matrixY+900, 100, 100);
    image(fish3s[1], fishx3_2, matrixY+1400, 100, 100);
    image(fish3s[2], fishx3_3, matrixY+2560, 100, 100);
    image(fish3s[3], fishx3_4, matrixY+3100, 100, 100);
    image(pollutants[0], pollutantx0, matrixY+pollutanty0); 
    image(pollutants[1], pollutantx1, matrixY+pollutanty1); 
    image(pollutants[2], pollutantx2, matrixY+pollutanty2); 
    image(pollutants[3], pollutantx3, matrixY+pollutanty3); 
    image(herostone, herostoneX, matrixY+3330);
    if (dist(oldGuy.position.x+oldGuy.size.x/2, oldGuy.position.y, 400, matrixY+5830)<170) {
      herostoneX=10000;
      fishintersect= true;
    }  
    println(fishintersect);
    imageMode(CORNER);
    pollutantx0 -= pollutantxspeed1;
    pollutanty0 -= pollutantyspeed1;
    pollutantx1 -= pollutantxspeed2;
    pollutanty1 -= pollutantyspeed2;
    pollutantx2 -= pollutantxspeed3;
    pollutanty2 -= pollutantyspeed3;
    pollutantx3 -= pollutantxspeed4;
    pollutanty3 -= pollutantyspeed4;
    if (pollutantx0>width || pollutantx0<0) {
      pollutantxspeed1= -pollutantxspeed1;
    }
    if (pollutanty0>width || pollutanty0<0) {
      pollutantyspeed1= -pollutantyspeed1;
    }
    if (pollutantx1>width || pollutantx1<0) {
      pollutantxspeed2= -pollutantxspeed2;
    }
    if (pollutanty1>width || pollutanty1<0) {
      pollutantyspeed2= -pollutantyspeed2;
    }
    if (pollutantx2>width || pollutantx2<0) {
      pollutantxspeed3= -pollutantxspeed3;
    }
    if (pollutanty2>width || pollutanty2<0) {
      pollutantyspeed3= -pollutantyspeed3;
    }
    if (pollutantx3>width || pollutantx3<0) {
      pollutantxspeed4= -pollutantxspeed4;
    }
    if (pollutanty3>width || pollutanty3<0) {
      pollutantyspeed4= -pollutantyspeed4;
    }
    if (dist(oldGuy.position.x+oldGuy.size.x/2, oldGuy.position.y+oldGuy.size.y/2, pollutantx0, pollutanty0)<70) {
      pollutantx0= 5000;
    }
    if (dist(oldGuy.position.x+oldGuy.size.x/2, oldGuy.position.y+oldGuy.size.y/2, pollutantx1, pollutanty1)<70) {
      pollutantx1= 5000;
    }
    if (dist(oldGuy.position.x+oldGuy.size.x/2, oldGuy.position.y+oldGuy.size.y/2, pollutantx2, pollutanty2)<70) {
      pollutantx2= 5000;
    }
    if (dist(oldGuy.position.x+oldGuy.size.x/2, oldGuy.position.y+oldGuy.size.y/2, pollutantx3, pollutanty3)<70) {
      pollutantx3= 5000;
    }
    if (pollutantx0>=4000 && pollutantx1>=4000 && pollutantx2>=4000 && pollutantx3>=4000 && fishintersect== true && o2>0 && oldGuy.position.y<matrixX+250) {
      river_fail=false;
    } else if (o2== 0) {
      river_fail= true;
    }



    /* if(river_fail){
     o2= 100;
     pollutantx0=0;
     pollutantx1=100;
     pollutantx2=300;
     pollutantx3= 500;
     } */




    if (fishx1_1>width) {
      fishx1_1= -500;
    }
    if (fishx1_2>width) {
      fishx1_2= -500;
    }
    if (fishx1_3>width) {
      fishx1_3= -500;
    }
    if (fishx1_4>width) {
      fishx1_4= -500;
    }
    if (fishx2_1>width) {
      fishx2_1= -500;
    }
    if (fishx2_2>width) {
      fishx2_2= -500;
    }
    if (fishx2_3>width) {
      fishx2_3= -500;
    }
    if (fishx2_4>width) {
      fishx2_4= -500;
    }
    if (fishx3_1>width) {
      fishx3_1= -500;
    }
    if (fishx3_2>width) {
      fishx3_2= -500;
    }
    if (fishx3_3>width) {
      fishx3_3= -500;
    }
    if (fishx3_4>width) {
      fishx3_4= -500;
    }



    imageMode(CORNER);   
    oldGuy.jumped= false;
    oldGuy.updateOldGuy(blocks, matrixX, matrixY);
    oldGuy.position.y=constrain(oldGuy.position.y, 200, 3250);
    oldGuy.position.x=constrain(oldGuy.position.x, 50, width-100);
    if (oldGuy.position.y== 3350 ) {
      oldGuy.jumped=false;
    }
    oldGuy.image= swimdowns[1];
    if (oldGuy.direction == -1 && oldGuy.velocity.y<0) {
      oldGuy.image= swimuplefts[(frameCount/7)%4];
      oldGuy.size= new PVector(200, 200);
    } else if (oldGuy.direction == 1 && oldGuy.velocity.y<0) {
      oldGuy.image= swimuprights[(frameCount/7)%4];
      oldGuy.size= new PVector(200, 200);
    } else if (oldGuy.direction ==0 && oldGuy.velocity.y<0) {
      oldGuy.image= swimups[(frameCount/7)%4];
      oldGuy.size= new PVector(200, 200);
    } else if (oldGuy.direction == -1 && oldGuy.velocity.y>=0) {
      oldGuy.image= swimdownlefts[(frameCount/7)%4];
      oldGuy.size= new PVector(200, 200);
    } else if (oldGuy.direction == 1 && oldGuy.velocity.y>=0) {
      oldGuy.image= swimdownrights[(frameCount/7)%4];
      oldGuy.size= new PVector(200, 200);
    } else if (oldGuy.direction ==0 && oldGuy.velocity.y>=0) {
      oldGuy.image= swimdowns[(frameCount/7)%4];
      oldGuy.size= new PVector(200, 200);
    } 
    fill(205, 59, 90, 150);
    textSize(32);
    text("LIFE = ", width-280, 100);
    o2= 100-(int)life/50;
    o2= constrain(o2, 0, 100);
    text(o2+ "%", width-165, 100);
    noFill();
    if (river_fail== false) {
      image(riverclean, 0, 0);
      image(fisher1, 100, 200, 100, 200);
      if (m12count==0) {
        image(herostoneclear, width/10, height/2-150);
      }
      if (m12count==1) {
        image(fisherthanks, width/10, height/2-150);
      }
      if (m12count>=2) {
        image(gobackhome, width/10, height/2-150);
      }
      image(herostone3, 720, 550-479);
      o2=100;
      oldGuy.position.x=5000;
      if (keyPressed) {
        if (keyCode== CONTROL && m12count>=2) {
          oldGuy.walkSpeed=5;
          oldGuy.jumpSpeed=15;
          map =13;
          oldGuy.size = new PVector(80, 200);
          oldGuy.position.x=970;
          oldGuy.image= oldGuy.images[0];
          matrixX=0;
          matrixY=0;
        }
      }
    }
    image(frame, 0, 0, 1080, 720);
    break;

  case 13:
    Map13.draw();
    image(frame, 0, 0, 1080, 720);
    break;

  case 14:
    myMovie.loop();
    image(myMovie, 0, 0);
    if (movieTimer.isFinished()) {
      myMovie.noLoop();
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

  //if (oldGuy.direction == -1 && oldGuy.jumped ==false && oldGuy.intersect== false) {
  //  oldGuy.image= oldGuy.lefts[(frameCount/7)%8];
  //  oldGuy.size= new PVector(105, 200);
  //} else if (oldGuy.direction == 1 && oldGuy.jumped ==false && oldGuy.intersect== false) {
  //  oldGuy.image= oldGuy.rights[(frameCount/7)%8];
  //  oldGuy.size= new PVector(105, 200);
  //} else if (oldGuy.direction == -1 && oldGuy.jumped ==true && oldGuy.intersect== false) {
  //  oldGuy.image= oldGuy.jumps[1];
  //  oldGuy.size= new PVector(130, 200);
  //} else if (oldGuy.direction == 1 && oldGuy.jumped ==true && oldGuy.intersect== false) {
  //  oldGuy.image= oldGuy.jumps[3];
  //  oldGuy.size= new PVector(130, 200);
  //}
  //if ( oldGuy.direction == -1 && oldGuy.velocity.y > 5 && oldGuy.intersect== false) {
  //  oldGuy.image= oldGuy.jumps[0];
  //  oldGuy.size= new PVector(165, 200);
  //}
  //if ( oldGuy.direction == 1 && oldGuy.velocity.y > 5 && oldGuy.intersect== false) {
  //  oldGuy.image= oldGuy.jumps[2];
  //  oldGuy.size= new PVector(165, 200);
  //}
  //if (oldGuy.position.x < 800 && oldGuy.position.y > 200) {
  //  matrixX = 0;
  //  matrixY = 0;
  //} else if (oldGuy.position.x  > 800 &&  oldGuy.position.y > 200) {
  //  matrixX = 800 - oldGuy.position.x ;
  //  matrixY = 0;
  //} else if (oldGuy.position.x  > 800 &&oldGuy.position.y < 200) {
  //  matrixX = 800 - oldGuy.position.x ;
  //  matrixY = 200 - oldGuy.position.y;
  //} else if (oldGuy.position.x  <800 &&oldGuy.position.y < 200) {
  //  matrixX = 0;
  //  matrixY = 200 - oldGuy.position.y;
  //}
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
  if (keyPressed) {
    if (keyCode== ENTER && river_fail ==false) {
      m12count ++;
    }

    if (keyCode == ENTER && oldGuy.position.x<=150 &&oldGuy.position.x>70) {
      m2count0 ++;
    }
    if (keyCode == ENTER && oldGuy.position.x<-1794 &&oldGuy.position.x>-1990) {
      m2count1 ++;
    }
    if (keyCode ==ENTER && oldGuy.position.x<-3906 &&oldGuy.position.x>-4086) {
      m2count2 ++;
      //if(mcount>=2){
      //  mcount=0;
      //}
    }


    if (keyCode == ENTER && oldGuy.position.x<190 &&oldGuy.position.x>-95) {
      m4count0 ++;
    }
    if (keyCode == ENTER &&oldGuy.position.x<-1445 &&oldGuy.position.x>-1860) {
      m4count1 ++;
    }
    if (keyCode ==ENTER && oldGuy.position.x<-410 &&oldGuy.position.x>-960) {
      m4count2 ++;
    }

    if (keyCode == ENTER &&oldGuy.position.x<1700 &&oldGuy.position.x>320) {
      m5count0 ++;
    }
    if (keyCode == ENTER &&oldGuy.position.x<330 &&oldGuy.position.x>100) {
      m5count1 ++;
    }
    if (keyCode == ENTER &&oldGuy.position.x<-7000 &&oldGuy.position.x>-8000) {
      m5count2 ++;
    }


    if (keyCode == ENTER &&oldGuy.position.x<470 &&oldGuy.position.x>230) {
      m6count0 ++;
    }

    if (keyCode == ENTER &&oldGuy.position.x<470 &&oldGuy.position.x>230) {
      m7count0 ++;
    }
    if (keyCode == ENTER &&oldGuy.position.x<535 &&oldGuy.position.x>385) {
      m8count0 ++;
    }


    if (keyCode == ENTER &&oldGuy.position.x<240 &&oldGuy.position.x>180) {
      m11count0 ++;
    }
    if (keyCode == ENTER &&oldGuy.position.x<568) {
      endingcount ++;
    }

    if (keyCode == ENTER &&oldGuy.position.x<380 &&oldGuy.position.x>228) {
      m14count0 ++;
    }
  }










  if (game == 0 && keyCode == ENTER) {
    game=1;
    bgm = true;
  } else if (game == 1 && keyCode == ENTER) {
    bgm = true;
  } else if (game == 1 && keyCode == BACKSPACE) {
    bgm = false;
    drops = new Beatdrop[1000];
    timer = new Timer(250);
    noStroke();
    timer.startTimer();
    totalDrops = 0;
    score = 0;
    failScore = 0;
  } else if (game ==2 && keyCode == ENTER) {
    minicount++;
    if (minicount ==5) {
      oldGuy.position.x=970;
      oldGuy.image= oldGuy.images[0];
      matrixX=0;
      map= 10;
      victoryBGM = false;

      drops = new Beatdrop[1000];
      timer = new Timer(250);
      noStroke();
      timer.startTimer();
      totalDrops = 0;
      score = 0;
      failScore = 0;
    }
  } else if (game ==3 && keyCode == ENTER) {
    failBGM = false;
    map = 8; 
    drops = new Beatdrop[1000];
    timer = new Timer(250);
    noStroke();
    timer.startTimer();
    totalDrops = 0;
    score = 0;
    failScore = 0;
  } else if (game ==3 && keyCode == BACKSPACE) {
    failBGM = false;
    game = 1;
    drops = new Beatdrop[1000];
    timer = new Timer(250);
    noStroke();
    timer.startTimer();
    totalDrops = 0;
    score = 0;
    failScore = 0;
  }
}

void keyReleased() {
  oldGuy.keyReleased();
}
void movieEvent(Movie m) {
  m.read();
}