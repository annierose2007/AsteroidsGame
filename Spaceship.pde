class Spaceship extends Floater{
  public Spaceship(){
    rotate(radians(270));
    corners = 17;
    xCorners = new int[]{0,7,7,10,10,20,10,20,10,0,0,-10,-20,-10,-20,-10,-10,-7,-7};
    yCorners = new int[]{-10,-10,-13,-13,-10,-10,0,0,10,15,15,10,0,0,-10,-10,-13,-13,-10};
    myColor = myStrokeColor= color(255,69,59);
    myCenterX = 375;
    myCenterY = 375;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void hyperspace(){
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*750)+1;
    myCenterY = (int)(Math.random()*750)+1;
    myPointDirection = Math.random()*360;
  }
}
