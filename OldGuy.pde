class OldGuy {
  PImage[] images;
  PImage[] lefts;
  PImage[] rights;
  PImage[] jumps;
  PImage[] climbs;
  PImage image;
  PVector size;
  PVector position;
  PVector velocity;
  float direction;
  float jumpSpeed;
  float walkSpeed;
  float gravity;
  boolean fucking= true;
  boolean jumped;
  boolean collided;
  boolean intersect;

  OldGuy() {
    images = new PImage[2];
    lefts = new PImage[8];
    rights= new PImage[8];
    jumps = new PImage[4];
    climbs= new PImage[4];
    images[0] = loadImage("standing left.png");
    images[1] = loadImage("standing right.png");
    lefts[0] = loadImage("left1.png");
    lefts[1] = loadImage("left2.png");
    lefts[2] = loadImage("left3.png");
    lefts[3] = loadImage("left4.png");
    lefts[4] = loadImage("left5.png");
    lefts[5] = loadImage("left6.png");
    lefts[6] = loadImage("left7.png");
    lefts[7] = loadImage("left8.png");
    rights[0] = loadImage("right1.png");
    rights[1] = loadImage("right2.png");
    rights[2] = loadImage("right3.png");
    rights[3] = loadImage("right4.png");
    rights[4] = loadImage("right5.png");
    rights[5] = loadImage("right6.png");
    rights[6] = loadImage("right7.png");
    rights[7] = loadImage("right8.png");
    jumps[0] = loadImage("jumpleftdown.png");
    jumps[1] = loadImage("jumpleftup.png");
    jumps[2] = loadImage("jumprightdown.png");
    jumps[3] = loadImage("jump3.png");
    climbs[0] = loadImage("climbing1.png");
    climbs[1] = loadImage("climbing2.png");
    climbs[2] = loadImage("climbing3.png");
    climbs[3] = loadImage("climbing4.png");
    image = images[0];
    size = new PVector(80, 200);
    position = new PVector(1030, 470);
    velocity = new PVector(0, 0);
    direction = 0;
    jumpSpeed = 15;
    walkSpeed =5;

    gravity = 0.5;
    jumped = false;
    collided = true;
  }

  void draw() {
  }

  void updateOldGuy(Block[] blocks, float mx, float my) {

    if (collide_block(blocks)) {
      //on_block(blocks);
      jumped = false;
      velocity.y = 0;
    } else if (velocity.y>=0 && map ==12) {
      velocity.y= 3;
    } else {
      velocity.y += gravity;
    }


    println(position);


    if ( oldGuy.position.x+oldGuy.size.x/2>=ropes[0].x-10 && oldGuy.position.x+oldGuy.size.x/2<=ropes[0].x +ropes[0].w+10&& oldGuy.position.y<= ropes[0].y+ropes[0].h+200 && oldGuy.position.y>=ropes[0].y) {
      intersect= true;
      velocity.y= 0;
    } else if (oldGuy.position.x+oldGuy.size.x/2>=ropes[1].x-10 && oldGuy.position.x+oldGuy.size.x/2<=ropes[1].x +ropes[1].w+10&& oldGuy.position.y<= ropes[1].y+ropes[1].h+400 && oldGuy.position.y>=ropes[1].y) {
      intersect= true;
      velocity.y= 0;
    } else if (oldGuy.position.x+oldGuy.size.x/2>=ropes[2].x-10 && oldGuy.position.x+oldGuy.size.x/2<=ropes[2].x +ropes[2].w+10&& oldGuy.position.y<= ropes[2].y+ropes[2].h+100 && oldGuy.position.y>=ropes[2].y) {
      intersect= true;
      velocity.y= 0;
    } else if (oldGuy.position.x+oldGuy.size.x/2>=ropes[3].x-10 && oldGuy.position.x+oldGuy.size.x/2<=ropes[3].x +ropes[3].w+10&& oldGuy.position.y<= ropes[3].y+ropes[3].h+500 && oldGuy.position.y>=ropes[3].y) {
      intersect= true;
      velocity.y= 0;
    } else if (oldGuy.position.x+oldGuy.size.x/2>=ropes[4].x-10 && oldGuy.position.x+oldGuy.size.x/2<=ropes[4].x +ropes[4].w+10&& oldGuy.position.y<= ropes[4].y+ropes[4].h+400 && oldGuy.position.y>=ropes[4].y) {
      intersect= true;
      velocity.y= 0;
    } else { 
      intersect = false;
    }



    velocity.x = walkSpeed * direction;
    PVector nextPosition = new PVector(position.x, position.y);
    nextPosition.add(velocity);

    float offset = 0;
    if (nextPosition.x > offset || nextPosition.x<= offset)
    {
      position.x = nextPosition.x;
    } 

    if (nextPosition.y >= offset && nextPosition.y <= 3360)
    {
      position.y = nextPosition.y;
    } 





    pushMatrix();
    translate(mx, my);
    image(image, position.x, position.y, size.x, size.y);
    popMatrix();
  }

  boolean collide_block(Block[] block) {
    for (int i=0; i<block.length; i++) {
      if ((velocity.y > 0)
        &&(position.x > block[i].x - size.x) 
        && (position.x < block[i].x + block[i].w)
        &&(position.y >= block[i].y - size.y)
        &&(position.y <= block[i].y - size.y + block[i].h/2)) {
        //collided = true;
        on_block(block);
        return true;
      }
    }
    return false;
  }

  void on_block(Block[] block) {
    float on = height;
    for (int i=0; i<block.length; i++) {
      if ((velocity.y > 0)
        &&(position.x > block[i].x - size.x)
        &&(position.x < block[i].x + block[i].w)
        &&(position.y >= block[i].y - size.y)
        &&(position.y <= block[i].y + block[i].h/2)) {
        if (on > block[i].y - size.y) {
          on = block[i].y - size.y;
        }
      }
    }
    position.y = on;
  }

  void keyPressed() {

    if (keyCode == LEFT)
    {
      direction = -1;
    }
    if (keyCode == RIGHT)
    {
      direction = 1;
    }
    if (keyCode == UP&& map != 12)
    {
      if (!jumped) {
        jumped = true;
        velocity.y -= jumpSpeed;
      }
    }
    if (keyCode == UP&& map ==12)
    {
      if (!jumped) {
        velocity.y = -10;
      }
    }
    if (keyCode == DOWN)
    {
    }
  }

  void keyReleased() {
    if (keyCode == LEFT&& map !=12)
    {
      direction = 0;
      image =  images[0];
      size = new PVector(80, 200);
    }
    if (keyCode == LEFT&& map ==12)
    {
      direction = 0;
    }
    if (keyCode == RIGHT && map !=12)
    {
      direction = 0;
      image= images[1];
      size = new PVector(80, 200);
    }
     if (keyCode == RIGHT && map ==12)
    {
      direction = 0;
 
    }
    if (keyCode == UP)
    {
    }

    if (keyCode == DOWN)
    {
    }
  }


  boolean intersect(NPC n) {
    float distance =dist(position.x, position.y, n.x, n.y);
    if (distance < 100) {
      return true;
    } else {
      return false;
    }
  }
}