class Map1 {
  PImage logo;
  PImage tu1;
  PImage tu2;
  PImage tu3;
  PImage tu4;
  PImage village;
  PImage wall1;
  PImage wall2;
  PImage wall3;
  PImage howtoplay;
  int count;
  boolean page_start = false;
  Timer timer = new Timer(7000);
  int page = 0;
  PImage  frame;
  PImage mainstart;


  Map1() {
    howtoplay= loadImage("howtoplay.jpg");
    logo = loadImage("logo.png");
    tu1 = loadImage("tu1.png");
    tu2 = loadImage("tu2.png");
    tu3 = loadImage("tu3.png");
    tu4 = loadImage("tu4.png");
    village= loadImage("village.png");
    wall1= loadImage("wall1.png");
    wall2= loadImage("wall2.png");
    wall3= loadImage("wall3.png");
    frame = loadImage("frame.png");
    mainstart = loadImage("logo.png");
  }


  void draw() {
    background(255);

    switch(page) {

    case 0:

      image(mainstart, 0, 0); 
      if (keyPressed) {
        if (key =='s') {
          page=1;
        }
      }
      textSize(40);
      text("press 's' to start", 300, 500);
      break;
      
    case 1:
      if (!page_start) {
        page_start = true;
        timer.startTimer();
      }
      image(logo, 0, 0);
      image(frame, 0, 0, 1080, 720);
      if (timer.isFinished()) {
        page++;
        page_start = false;
      }
      break;
    case 2:
      if (!page_start) {
        page_start = true;
        timer.startTimer();
      }
      image(howtoplay, 0, 0);
      image(frame, 0, 0, 1080, 720);
      if (timer.isFinished()) {
        page++;
        page_start = false;
      }
      break;
    case 3:
      if (!page_start) {
        page_start = true;
        timer.startTimer();
      }
      image(tu1, 0, 0);
      image(frame, 0, 0, 1080, 720);
      if (timer.isFinished()) {
        page++;
        page_start = false;
      }
      break;

    case 4:
      if (!page_start) {
        page_start = true;
        timer.startTimer();
      }
      image(tu2, 0, 0);
      image(frame, 0, 0, 1080, 720);
      if (timer.isFinished()) {
        page++;
        page_start = false;
      }
      break;

    case 5:
      if (!page_start) {
        page_start = true;
        timer.startTimer();
      }
      image(tu3, 0, 0);
      image(frame, 0, 0, 1080, 720);
      if (timer.isFinished()) {
        page++;
        page_start = false;       
        stage =0;
      }
      break;

    case 6:
      if (!page_start) {
        page_start = true;
        timer.startTimer();
      }
      image(tu4, 0, 0);
      image(frame, 0, 0, 1080, 720);
      if (timer.isFinished()) {
        page++;
        page_start = false;       
        map++;
        stage =0;
      }
      break;
    }
  }
}