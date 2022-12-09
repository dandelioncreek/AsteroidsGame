class Bullet extends Floater{
  public Bullet(Spaceship chamomile){
    myCenterX = chamomile.getX();
    myCenterY = chamomile.getY();
    myXspeed = 10;
    myYspeed = 10;
    myPointDirection = chamomile.getPointDirection();
    accelerate(2);
  }
  public void show(){
    fill(255, 255, 255);
    stroke(0, 255, 0);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
}
