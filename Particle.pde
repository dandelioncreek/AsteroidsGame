class Particle
{
  private double myAngle, mySpeed, myX, myY, myC;
  private int particleTime;
  public Particle(Asteroid cat) {
    myAngle = (Math.random()*2*PI);
    mySpeed = (Math.random()*10);
    myX = cat.getX();
    myY = cat.getY();
    myC = color((int)(Math.random()*200), -33+(int)(Math.random()*100), 10+(int)(Math.random()*250));
    // myC = color(32+(int)(Math.random()*50), -33+(int)(Math.random()*50), 210+(int)(Math.random()*50));
    particleTime = (int)(Math.random()*60);
  }
  public int getPT() {
    return particleTime;
  }
  public void show()
  {
    fill((int)myC);
    stroke(0, 0, 0);
    ellipse((float)myX, (float)myY, 5, 5);
  }
  public void move() {
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
    particleTime--;
  }
}
