class Asteroid extends Floater
{
   private double rotSpeed; //randomly + or -
   public Asteroid(){ 
     corners = 17;
     xCorners = new int[corners];
     yCorners = new int[corners];
     int n = (int)(Math.random()*2) + 3;
     rotSpeed =(Math.random()*4) - 2;
     xCorners[0] = -1*n;
     yCorners[0] = -5*n;
     xCorners[1] = 1*n;
     yCorners[1] = -5*n;
     xCorners[2] = 3*n;
     yCorners[2] = -6*n;
     xCorners[3] = 2*n;
     yCorners[3] = -4*n;
     xCorners[4] = 2*n; 
     yCorners[4] = -2*n;
     xCorners[5] = 3*n;
     yCorners[5] = 1*n; //1
     xCorners[6] = 3*n;
     yCorners[6] = -2*n;
     xCorners[7] = 4*n;
     yCorners[7] = -4*n;
     xCorners[8] = 5*n;
     yCorners[8] = -4*n;
     xCorners[9] = 4*n;
     yCorners[9] = -2*n;
     xCorners[10] = 4*n;
     yCorners[10] = 1*n;
    // 3,3
     xCorners[11] = 3*n;
     yCorners[11] = 5*n;
     xCorners[12] = -3*n;
     yCorners[12] = 5*n;
     xCorners[13] = -3*n;
     yCorners[13] = 1*n;
     xCorners[14] = -2*n;
     yCorners[14] = -2*n;
     xCorners[15] = -2*n;
     yCorners[15] = -4*n;
     xCorners[16] = -3*n;
     yCorners[16] = -6*n;
     myColor = color((int)(Math.random()*100)+130,(int)(Math.random()*64)+150, (int)(Math.random()*20)+160);
     myXspeed = (int)(Math.random()*5)-2;
     myYspeed = (int)(Math.random()*5)-2;
     myCenterX = (int)(Math.random()*width);
     myCenterY = (int)(Math.random()*height); 
     myPointDirection = (int)(Math.random()*360);
   }
   public void move(){
     super.move();
     super.turn(rotSpeed);
   }
}
