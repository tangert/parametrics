//setup
void setup() {
 background(20);
 size(1000, 700);
}


float t;
static final int numLines = 10;

void draw() {
 
 background(255); 
 translate(width/2, height/2);
 
 
 for (int i = 0; i < numLines*2; i++) {
  stroke(i, i+75, i+150);
  line(x1(t+i), y1(t+i), x2(t+i), y2(t+i));
  strokeWeight(i/2);
 }
 
  for (int j = 0; j < numLines*2; j++) {
  stroke(j+150, j+75, j);
  line(-x1(t+j), -y1(t+j), -x2(t+j), -y2(t+j));
  strokeWeight(j/2);
 }
 
  for (int k = 0; k < numLines*2; k++) {
  stroke(k+75, k+150, k);
  line(-0.5*x1(t+k), -0.5*y1(t+k), -0.5*x2(t+k), -0.5*y2(t+k));
  strokeWeight(k/2);
 }
 
  for (int k = 0; k < numLines*2; k++) {
  stroke(k+75, k, k+150);
  line(0.5*x1(t+k), 0.5*y1(t+k), 0.5*x2(t+k), 0.5*y2(t+k));
  strokeWeight(k/2);
 }
  t++;
  
  saveFrame("frames/####.png");

}


//parametric equations


//first set
float x1(float t) {
  return ( (sin(t/10) * 200) + (sin(t/10) * 100) ) ;
}

float y1(float t) {
  return sin(t/40) * 200;
}


//second set
float x2(float t) {
  return ( (cos(t/10) * 200) + (sin(t/10) * 100) ) ;
}

float y2(float t) {
  return sin(t/20) * 200;
}


//circular set