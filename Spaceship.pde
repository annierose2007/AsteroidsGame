class Spaceship extends Floater {   
  protected boolean flicker;
  protected int myOpacity, var, lives;

  Spaceship() {
    	myCenterX = myCenterY = 400;
	myDirectionX = myDirectionY = 0;
	myPointDirection = -90;
	myColor = color(255,0,0);	
	corners = 23;
	xCorners = new int[corners];
	yCorners = new int[corners];
	xCorners[0] = 2*2;
	yCorners[0] = -4*2;
	xCorners[1] = 15*2;
	yCorners[1] = -2*2;
	xCorners[2] = 18*2;
	yCorners[2] = 0*2;
	xCorners[3] = 15*2;
	yCorners[3] = 2*2;
	xCorners[4] = 2*2;
	yCorners[4] = 4*2;
	xCorners[5] = 2*2;
	yCorners[5] = 6*2;
	xCorners[6] = 6*2;
	yCorners[6] = 6*2;
	xCorners[7] = 9*2;
	yCorners[7] = 8*2;
	xCorners[8] = 6*2;
	yCorners[8] = 10*2;
	xCorners[9] = -6*2;
	yCorners[9] = 10*2;
	xCorners[10] = -6*2;
	yCorners[10] = 6*2;
	xCorners[11] = -2*2;
	yCorners[11] = 6*2;
	xCorners[12] = -2*2;
	yCorners[12] = 2*2;
	xCorners[13] = -6*2;
	yCorners[13] = 2*2;
	xCorners[14] = -6*2;
	yCorners[14] = -2*2;
	xCorners[15] = -2*2;
	yCorners[15] = -2*2;
	xCorners[16] = -2*2;
	yCorners[16] = -6*2;
	xCorners[17] = -6*2;
	yCorners[17] = -6*2;
	xCorners[18] = -6*2;
	yCorners[18] = -10*2;
	xCorners[19] = 6*2;
	yCorners[19] = -10*2;
	xCorners[20] = 9*2;
	yCorners[20] = -8*2;
	xCorners[21] = 6*2;
	yCorners[21] = -6*2;
	xCorners[22] = 2*2;
	yCorners[22] = -6*2;
  }

  public void slowSpeed() {
    if (myXspeed >= 0.01) myXspeed *= 0.9;
    else if (myXspeed <= 0.01) myXspeed *= 0.9;
    if (myYspeed > 0.01) myYspeed *= 0.9;
    else if (myYspeed < 0.01) myYspeed *= 0.9;
  }

  public int getOpacity() { return myOpacity; }

  public void lowerOpacity() {
    myOpacity -= 15;
    myColor = color(255, 255, 255, myOpacity);
  }

  public void raiseOpacity() {
    myOpacity += 15;
    myColor = color(255, 255, 255, myOpacity);
  }

  public void hyperspace() {
    myCenterX = Math.random() * 1000;
    myCenterY = Math.random() * 600;
  }

  public void showBlast() {
    if (flicker == true) flicker = false;
    else {
      noStroke();
      fill(0, 255, 255);
      translate((float)myCenterX, (float)myCenterY);
      float dRadians = (float)(myPointDirection*(Math.PI / 180)); 
      rotate(dRadians + (float)Math.PI / 2.5); //rotate
      rect(0, 15, 1, 10 + (float)(Math.random() * 7) - 5); //down (starting pos)
      rotate((float)Math.PI / 5.0); //rotate
      rect(0, 15, 1, 10 + (float)(Math.random() * 7) - 5); //up (starting pos)
      rotate((float)Math.PI / -10.0); //rotate
      rect(0, 15, 1, 10 + (float)(Math.random() * 7) - 5); //middle

      flicker = true;
    }
  }
  
  public double getX() { return myCenterX; }
  
  public double getY() { return myCenterY; }

  public void updateColor() { myColor = color(255, var, var); }

  public void lowerVar() { var -= 50; }

  public int getLives() { 
    lives = 0;
    for(int i = var; i >= 150; i -= 50) {
      lives++;
    } return lives;
  }
}
