class Block {
  float x, y, w, h;
  Block(float _x, float _y, float _w, float _h) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
  }

  void draw(float mx, float my) {
    pushMatrix();
    translate(mx, my);
    fill(0);

    rect(mx + x, my + y, w, h);

    popMatrix();
  }
}