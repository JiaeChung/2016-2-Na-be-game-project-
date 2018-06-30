
class Dialogue {
  float x, y, w, h;
  int count;
  String[] dialogues;

  Dialogue() {
    x = 300;
    y = 0;
    w = 500;
    h=  200;
    dialogues = new String[0];
  }

  Dialogue(String[] str_list) {
    x = 300;
    y = 0;
    w = 500;
    h=  200;
    dialogues = str_list;
  }

  boolean isFinished() {

    int dialogue_num = count;
    if (dialogue_num >= 3) {
      return true;
    } else {
      return false;
    }
  }


  void display() {
    //if (mousePressed) {
    //  count = count+1;
    // }
    if (dialogues.length == 0) {
      fill(255);
      rect(x, y, w, h);
      if (count==0) {
        fill(255);
        rect(x, y, w, h);
        fill(0);
        textSize(50);
        text("dialogue 1", x, 50);
      }

      if (count==1) {
        fill(0);
        textSize(50);
        text("dialogue 2", x, 50);
      }

      if (count ==2) {
        fill(0);
        textSize(50);
        text("dialogue 3", x, 50);
      }

      if (count ==3) {
        fill(0);
        textSize(50);
        text("dialogue    4", x, 50);
      }
      if (count ==4) {
        fill(255, 0, 0);
        rect(900, 50, 50, 50);
      }
    } else {
      for (int i=0; i<dialogues.length; i++) {
        if (count == i) {
          fill(255);
          rect(x, y, w, h);
          fill(0);
          textSize(50);
          text(dialogues[i], x, 50);
        }
      } 
    }
  }
  void mousePressed() {
    count ++;
  }

  //void mousePressed() {
  //if (mouseX > 100 && mouseX < 150 && mouseY > 600 && mouseY < 610){
  //  button = !button;
  //}

  //  if (click == 0) {
  //    click = click +1;
  //  }  else if (click ==1) {
  //    click = click +1;
  //  }  else if (click ==2){
  //   click = click +1; 

  //  }
  //}
}