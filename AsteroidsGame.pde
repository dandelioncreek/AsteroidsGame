//your variable declarations here
Spaceship chamomile;
Asteroid cat;
Star[] brilliance = new Star[200];
ArrayList <Asteroid> cats = new ArrayList <Asteroid>();

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
}
