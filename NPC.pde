class NPC {
  float x, y, w, h;
  color c;
  NPC (float _x, float _y, float _w, float _h, color _c){
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    c = _c;
  }
  
  void draw(float mx, float my){
    pushMatrix();
    translate(mx, my);
    fill(0);

    rect(mx + x, my + y, w, h);
    popMatrix();    
  }
  
  void caught(){


  }
  
}