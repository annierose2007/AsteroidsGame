class Asteroid extends Floater {
  private double rotateSpeed;
  public Asteroid() {
    myColor = 100;
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = 0;
    myYspeed = 0;
    myXspeed = (Math.random()*4)-2;
    myYspeed = (Math.random()*4)-2;
    myPointDirection = 0;
    xCorners = new int[corners];
    yCorners = new int[corners];       
    corners = 6;
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = -15;
    yCorners[1] = 0;
    xCorners[2] = -11;
    yCorners[2] = 8; 
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = 13;
    yCorners[4] = 0;
    xCorners[5] = 7;
    yCorners[5] = -8;
    rotateSpeed = (Math.random()*8)-4;
  }
  
  public void move() {
    turn(rotateSpeed);
    super.move();
  }
  
  public double getCenterX() {
    return myCenterX;
  }
  
  public double getCenterY() {
    return myCenterY;
  }
}
