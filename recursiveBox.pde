float a = 0;
Box b;
ArrayList<Box> sponge;
void setup(){
  size(800, 800, P3D);
  b = new Box(0, 0, 0, 400);
  sponge = new ArrayList<Box>();
  sponge.add(b);
}

void mousePressed(){
  
  ArrayList<Box> next = new ArrayList<Box>();
  for(Box b_: sponge){
    ArrayList<Box> newBoxes = b_.generate();
    next.addAll(newBoxes);
  }
  sponge = next;
}

void draw(){
 background(0);
 
// lights();
 
 translate(width/2, height/2);
 rotateX(a);
 rotateY(a/2);
 for(Box b_: sponge){
   b_.show();
 }
 a+=0.01;
}
