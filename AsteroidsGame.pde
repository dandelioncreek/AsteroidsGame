//your variable declarations here
Spaceship chamomile;
Asteroid cat;
Star[] brilliance = new Star[200];
ArrayList <Asteroid> cats = new ArrayList <Asteroid> ();
ArrayList <Bullet> shots = new ArrayList <Bullet> ();
ArrayList <Particle> explode = new ArrayList <Particle> ();
boolean a = false;
boolean d = false;
boolean w = false;
boolean h = false;
boolean x = false;
int health = 50;
int score = 0;

public void setup() 
{
  size(900, 450);
  chamomile = new Spaceship();
  //cat = new Asteroid();
  for (int i = 0; i < 15; i++) {
    cats.add(new Asteroid());
  }
  for (int i = 0; i < brilliance.length; i++) {
    brilliance[i] = new Star();
  }
}

public void draw() 
{
  background(0);
  fill(202, 247, 244);
  textAlign(LEFT, CENTER);
  textSize(20);
  text("Score: " + score, width-150, 0, 150, 40);
  fill(202, 247, 244);
  textAlign(LEFT, CENTER);
  textSize(20);
  text("Health: " + health, 20, 0, 150, 40);
  if (health == 0) {
    background(0);
    textAlign(CENTER, CENTER);
    textSize(100);
    text("You lose, better luck next time", 0, 0, width, height/2);
    textSize(50);
    text("=^o.o^=      >      <º)))><", 0, height/2, width, height/2);
    return;//will end draw
  }
  if (cats.size() == 0) {
    textAlign(CENTER, CENTER);
    textSize(70);
    text("You win, congrats conqueror of the catverse", 0, 0, width, height/2);
    textSize(50);
    text("=^o.o^=      <      <º)))><", 0, height/2, width, height/2);
    return;
  }
  if (a) {
    chamomile.turn(-6);
  }
  if (d) {
    chamomile.turn(6);
  }
  if (w) {
    chamomile.accelerate(0.03);
  }
  if (h) {
    chamomile.hyperspace();
  }
  if (x) {
    if (frameCount % 3 == 0)
      shots.add(new Bullet(chamomile));
  }

  for (int i = 0; i < brilliance.length; i++) {
    brilliance[i].show();
  }
  chamomile.move();
  chamomile.show();
  for (int i = 0; i < cats.size(); i++) {
    cats.get(i).move();
    cats.get(i).show();
    float frog = dist((float)chamomile.getX(), (float)chamomile.getY(), (float)cats.get(i).getX(), (float)cats.get(i).getY());
    if (frog < 50) {
      cats.remove(i);
      health-=10;
      break;
    }
    for (int j = 0; j < shots.size(); j++) {
      float toad = dist((float)shots.get(j).getX(), (float)shots.get(j).getY(), (float)cats.get(i).getX(), (float)cats.get(i).getY());

      if (toad < 50) {
        for (int k = 0; k < 200; k++) {
          explode.add(new Particle(cats.get(i)));
        }
        cats.remove(i);
        shots.remove(j);
        score+= 10;

        break;
      }
    }
  }
  for (int i = shots.size()-1; i >=0; i--) {
    shots.get(i).move();
    shots.get(i).show();
    if (shots.get(i).getBT() < 0) {
      shots.remove(i);
    }
  }
  for (int i = explode.size()-1; i >= 0; i--) {
    explode.get(i).move();
    explode.get(i).show();
    if (explode.get(i).getPT() < 0) {
      explode.remove(i);
    }
  }
}
public void keyPressed() {
  if (key == 'a' || key == 'A') {
    //chamomile.turn(-10);
    a = true;
  }
  if (key == 'd' || key == 'D') {
    //chamomile.turn(10);
    d = true;
  }
  if (key == 'w' || key == 'W') {
    //chamomile.accelerate(0.1);
    w = true;
  }
  if (key == 'h' || key == 'H') {
    //chamomile.hyperspace();
    h = true;
  }
  if (key == 'x' || key == 'X') {
    //  if (frameCount % 3 == 0)
    //    shots.add(new Bullet(chamomile));
    x = true;
  }
}
public void keyReleased() {
  if (key == 'a' || key == 'A') {
    //chamomile.turn(-10);
    a = false;
  }
  if (key == 'd' || key == 'D') {
    //chamomile.turn(10);
    d = false;
  }
  if (key == 'w' || key == 'W') {
    //chamomile.accelerate(0.1);
    w = false;
  }
  if (key == 'h' || key == 'H') {
    //chamomile.hyperspace();
    h = false;
  }
  if (key == 'x' || key == 'X') {
    //  if (frameCount % 3 == 0)
    //    shots.add(new Bullet(chamomile));
    x = false;
  }
}


