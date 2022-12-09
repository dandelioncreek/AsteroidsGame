class Particle
{
  double myAngle, mySpeed, myX, myY, myC;
  Particle() {
    myAngle = (Math.random()*2*PI);
    mySpeed = (Math.random()*10);
    myX = 0;
    myY = 0;
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
