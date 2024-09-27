class CustomBox {
  PVector pos;
  float r;
  int[] c = {255, 0, 0};
  int alpha = 50;

  CustomBox(float x, float y, float z, float r_) {
    pos = new PVector(x, y, z);
    r = r_;
  }

  ArrayList<CustomBox> generate() {
    ArrayList<CustomBox> boxes = new ArrayList<CustomBox>();
    for (int i  = -1; i <= 1; i++) {
      for (int j = -1; j <= 1; j++) {
        for (int k = -1; k <= 1; k++) {
          int sum = abs(i) + abs(j) + abs(k);
          int[] c_ = {0, 0, 0};
          if (sum > 1) {
            c_[0] = 255;
          } else {
            c_[1] = 255;
          }
          float newR = r/3;
          CustomBox b = new CustomBox(pos.x + i*newR, pos.y + j*newR, pos.z + k*newR, newR);
          b.c = c_;
          boxes.add(b);
        }
      }
    }
    return boxes;
  }

  void show() {
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    fill(c[0], c[1], c[2], alpha);

    box(r);
    popMatrix();
  }
}
