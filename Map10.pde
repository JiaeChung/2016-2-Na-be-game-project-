class Map10 {
  PImage farmafter;
  PImage  frame;
  PImage herostone2;

  Map10() {
    farmafter = loadImage("farmafter.png");   
    frame = loadImage("frame.png");
    herostone2= loadImage("herostone2.png");
  }


  void draw() {
    image(farmafter, 0, 0);
    image(herostone2, 720, 550-479);
    blocks[0] = new Block(-10000, 650, 20*width, 1000);
    oldGuy.position.x= constrain(oldGuy.position.x, 220, 1000);
    oldGuy.updateOldGuy(blocks, matrixX, matrixY);
    oldGuy.position.x=760;
    oldGuy.position.y= 450;
    oldGuy.walkSpeed=0;
    oldGuy.jumpSpeed=0;

    //    if (oldGuy.position.x<470 &&oldGuy.position.x>200) {
    //      image(message, width/10, 5);
    //    }



   


    frame = loadImage("frame.png");

    if (keyPressed) {
      if (keyCode == CONTROL) {
        map=11;
        oldGuy.position.x=970;
        oldGuy.position.y=250;
        oldGuy.image= oldGuy.images[0];
        matrixX=0;
        matrixY=0;
      }
    }
  }
}