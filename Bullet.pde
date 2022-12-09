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
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
}
