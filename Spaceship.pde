class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 20;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 0*2;
    yCorners[0] = -4*2;
    xCorners[1] = 2*2;
    yCorners[1] = -2*2;
    xCorners[2] = 3*2;
    yCorners[2] = -2*2;
    xCorners[3] = 5*2;
    yCorners[3] = -1*2;
    xCorners[4] = 6*2;
    yCorners[4] = 0*2;
    xCorners[5] = 5*2;
    yCorners[5] = 1*2;
    xCorners[6] = 3*2;
    yCorners[6] = 2*2;
    xCorners[7] = 2*2;
    yCorners[7] = 2*2;
    xCorners[8] = 0*2;
    yCorners[8] = 4*2;
    xCorners[9] = -1*2;
    yCorners[9] = 2*2;
    xCorners[10] = -2*2;
    yCorners[10] = 2*2;
    xCorners[11] = -4*2;
    yCorners[11] = 1*2;
    xCorners[12] = -7*2;
    yCorners[12] = 3*2;
    xCorners[13] = -8*2;
    yCorners[13] = 2*2;
    xCorners[14] = -6*2;
    yCorners[14] = 0;
    xCorners[15] = -8*2;
    yCorners[15] = -2*2;
    xCorners[16] = -7*2;
    yCorners[16] = -3*2;
    xCorners[17] = -4*2;
    yCorners[17] = -1*2;
    xCorners[18] = -2*2;
    yCorners[18] = -2*2;
    xCorners[19] = -1*2;
    yCorners[19] = -2*2;
    myColor = 255;
    myCenterX = width/2;
    myCenterY = height/2;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    
  }
  public void hyperspace(){
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*width);
    myCenterY = (int)(Math.random()*height); 
    myPointDirection = (int)(Math.random()*360);
  }

}
