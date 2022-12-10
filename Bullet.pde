class Bullet extends Floater{
  private int bulletTime;
  public Bullet(Spaceship chamomile){
    corners = 20;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 0;
    yCorners[0] = -4;
    xCorners[1] = 2;
    yCorners[1] = -2;
    xCorners[2] = 3;
    yCorners[2] = -2;
    xCorners[3] = 5;
    yCorners[3] = -1;
    xCorners[4] = 6;
    yCorners[4] = 0;
    xCorners[5] = 5;
    yCorners[5] = 1;
    xCorners[6] = 3;
    yCorners[6] = 2;
    xCorners[7] = 2;
    yCorners[7] = 2;
    xCorners[8] = 0;
    yCorners[8] = 4;
    xCorners[9] = -1;
    yCorners[9] = 2;
    xCorners[10] = -2;
    yCorners[10] = 2;
    xCorners[11] = -4;
    yCorners[11] = 1;
    xCorners[12] = -7;
    yCorners[12] = 3;
    xCorners[13] = -8;
    yCorners[13] = 2;
    xCorners[14] = -6;
    yCorners[14] = 0;
    xCorners[15] = -8;
    yCorners[15] = -2;
    xCorners[16] = -7;
    yCorners[16] = -3;
    xCorners[17] = -4;
    yCorners[17] = -1;
    xCorners[18] = -2;
    yCorners[18] = -2;
    xCorners[19] = -1;
    yCorners[19] = -2;
    myCenterX = chamomile.getX();
    myCenterY = chamomile.getY();
    myXspeed = chamomile.getspeedX();
    myYspeed = chamomile.getspeedY();
    myColor = 255;
    myPointDirection = chamomile.getPointDirection();
    accelerate(5);
    bulletTime = (int)(Math.random()*60)+40;
  }
  public int getBT() {
    return bulletTime;
  }
  public void move(){
    super.move();
    bulletTime--;
  }
  //public void show(){
  //  fill(255, 255, 255);
  //  stroke(0, 0, 0);
  //  //ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  //}
}
