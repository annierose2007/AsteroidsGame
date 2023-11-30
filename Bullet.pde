class Bullet extends Floater {
  public Bullet(Spaceship neil) {
    myCenterX = neil.getCenterX();
    myCenterY = neil.getCenterY();
    myXspeed = neil.getXspeed();
    myYspeed = neil.getYspeed();
    myPointDirection = neil.getPointDirection();
    accelerate(6.0);
  }
  public void show() {
    fill(255,255,0);
    ellipse((float)myCenterX,(float)myCenterY,5,5); 
  }
  public void move () {           
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     
  }   
  
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
  
}
