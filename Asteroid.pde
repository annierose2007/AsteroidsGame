class Asteroid extends Floater {
  private double rotateSpeed;
  public Asteroid() {
    myColor = 130;
    myCenterX = Math.random()*50;
    myCenterY = Math.random()*50;
    myXspeed = 0;
    myYspeed = 0;
    myXspeed = (Math.random()*4)-2;
    myYspeed = (Math.random()*4)-2;
    myPointDirection = 0;
    xCorners = new int[corners];
    yCorners = new int[corners];       
    corners = 12;
    xCorners = new int[]{-14,-14,-6,0,6,11,16,11,6,0,-6,-15};
    yCorners = new int[]{0,-5,-8,-11,-12,-5,0,5,10,12,12,5};
    rotateSpeed = (Math.random()*8)-4;
  }
  
  public void move() {
    turn(rotateSpeed);
    super.move();
  }
  public double getX() {
    return myCenterX;
  }
  
  public double getY() {
    return myCenterY;
  }
}
