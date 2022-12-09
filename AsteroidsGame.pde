//your variable declarations here
Spaceship chamomile;
Asteroid cat;
Star[] brilliance = new Star[200];
ArrayList <Asteroid> cats = new ArrayList <Asteroid> ();
ArrayList <Bullet> shots = new ArrayList <Bullet> ();

public void setup() 
{
  size(1280, 720);
  chamomile = new Spaceship();
//cat = new Asteroid();
  for (int i = 0; i < 15; i++){
    cats.add(new Asteroid());
  }
  for (int i = 0; i < brilliance.length; i++){
    brilliance[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < brilliance.length; i++){
    brilliance[i].show();
  }
  chamomile.move();
  chamomile.show();
  for (int i = 0; i < cats.size(); i++){
    cats.get(i).move();
    cats.get(i).show();
    float toad = dist((float)chamomile.getX(), (float)chamomile.getY(), (float)cats.get(i).getX(), (float)cats.get(i).getY());
    if (toad < 50)
      cats.remove(i);
  }
  for (i = 0; i < shots.size(); i++){
    shots.get(i).move();
    shots.get(i).show();
  }
}
public void keyPressed(){
  if(key == 'a' || key == 'A'){
    chamomile.turn(-10);
  }
  if(key == 'd' || key == 'D'){
    chamomile.turn(10);
  }
  if(key == 'w' || key == 'W'){
    chamomile.accelerate(0.1);
  }
  if(key == 'h' || key == 'H'){
    chamomile.hyperspace();
  }
  if(key == 'x' || key == 'X'){
    shots.add(new Bullet());
  }
}

// Particle [] part = new Particle[2000];
void setup()
{
  size(400, 400);
  noStroke();
  for (int i = 0; i < part.length; i++) {
    part[i] = new Particle();
  }
  for (int j = 0; j < 10; j++) {
    part[j] = new OddballParticle();
  }
}
class Particle
{
  double myAngle, mySpeed, myX, myY, myC;
  Particle() {
    myAngle = (Math.random()*2*PI);
    mySpeed = (Math.random()*10);
    myX = 200;
    myY = 200;
    myC = color((int)(Math.random()*200), -33+(int)(Math.random()*100), 10+(int)(Math.random()*250));
    // myC = color(32+(int)(Math.random()*50), -33+(int)(Math.random()*50), 210+(int)(Math.random()*50));
  }
  void show()
  {
    fill((int)myC);
    ellipse((float)myX, (float)myY, 5, 5);
  }
  void move() {
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
  }
}


void draw() {
  //background(0);
  fill(0,0,0,15);
  rect(0,0,400,400);
  for (int i = 0; i < part.length; i++) {
    part[i].move();
    part[i].show();
  }
}
class OddballParticle extends Particle
{
  OddballParticle() {
    myAngle = (Math.random()*2*PI);
    mySpeed = (Math.random()*10);
    myX = 200;
    myY = 200;
  }
  void show()
  {
    fill(255, 255, 0);
    star((float)myX, (float)myY, 5, 10, 5);
  }
  void move() {
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
  }
}
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
void mousePressed(){
  size(400, 400);
  noStroke();
  for (int i = 0; i < part.length; i++) {
    part[i] = new Particle();
  }
  for (int j = 0; j < 10; j++) {
    part[j] = new OddballParticle();
  }
} // starfield code for reference
