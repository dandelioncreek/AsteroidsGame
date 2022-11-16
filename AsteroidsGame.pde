Spaceship chamomile;
Star[] brilliance = new Star[200];
public void setup() 
{
  size(500, 500);
  chamomile = new Spaceship();
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
