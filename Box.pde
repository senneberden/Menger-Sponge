class Box {
  PVector pos;
  float r;
  int c;

  Box(float x, float y, float z, float r_) {
    pos = new PVector(x, y, z);
    r = r_;
  }

  ArrayList<Box> generate() {
    ArrayList<Box> boxes = new ArrayList<Box>();
    for (int i  = -1; i <= 1; i++) {
      for (int j = -1; j <= 1; j++) {
        for (int k = -1; k <= 1; k++) {
          int c_;
          c_ = 255;
          int sum = abs(i) + abs(j) + abs(k);
          if (sum > 1) {
            c_ = 0;
          }
          float newR = r/3;
          Box b = new Box(pos.x + i*newR, pos.y + j*newR, pos.z + k*newR, newR);
          b.c = c_;
          boxes.add(b);
        }
      }
    }
    return boxes;
  }

  void show() {
    fill(255-c, c, 0, 25);
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    box(r);
    popMatrix();
  }
}
