class Box1 extends CustomBox {
  Box1(float x, float y, float z, float r_) {
    super(x, y, z, r_);
    int[] c_ = {255, 255, 255};
    this.c = c_;
    this.alpha = 100;
  }

  @Override
    ArrayList<CustomBox> generate() {
    ArrayList<CustomBox> boxes = new ArrayList<CustomBox>();
    for (int i  = -1; i <= 1; i++) {
      for (int j = -1; j <= 1; j++) {
        for (int k = -1; k <= 1; k++) {
          int sum = abs(i) + abs(j) + abs(k);
          if (sum <= 1) {
            float newR = r/3;
            Box1 b = new Box1(pos.x + i*newR, pos.y + j*newR, pos.z + k*newR, newR);
            boxes.add(b);
          }
        }
      }
    }
    return boxes;
  }
}
