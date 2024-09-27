float a = 0;
CustomBox b;
ArrayList<CustomBox> sponge;
void setup() {
  size(800, 800, P3D);
  b = new CustomBox(0, 0, 0, 400);
  sponge = new ArrayList<CustomBox>();
  sponge.add(b);
}

void mousePressed() {

  ArrayList<CustomBox> next = new ArrayList<CustomBox>();
  for (CustomBox b_ : sponge) {
    ArrayList<CustomBox> newBoxes = b_.generate();
    next.addAll(newBoxes);
  }
  sponge = next;
}

void draw() {
  background(0);
  noStroke();
  lights();
  
  translate(width/2, height/2);
  rotateX(a);
  rotateY(a/2);
  rotateZ(a/4);
  
  for (CustomBox b_ : sponge) {
   b_.show();
  }
  a+=0.01;
}
