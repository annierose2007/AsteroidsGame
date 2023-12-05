class SpaceShip extends Floater  
{   
    public SpaceShip(){
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
          myCenterX = 300;
          myCenterY = 300;
          myDirectionX = 0;
          myDirectionY = 0;
          myPointDirection = 270;
          myColor = color(255,0,0);

    }

    public void setX(int x){myCenterX = x;}
    public int  getX(){return (int)myCenterX;}
    public void setY(int y){myCenterY = y;}
    public int  getY(){return (int)myCenterY;}
    public void setDirectionX(double x){myDirectionX = x;}
    public double getDirectionX(){return (double)myDirectionX;}
    public void setDirectionY(double y){myDirectionY = y;}
    public double getDirectionY(){return (double)myDirectionY;}
    public void setPointDirection(int degrees){myPointDirection = degrees;}   
    public double getPointDirection(){return (double)myPointDirection;} 

    public void hyperspace()
{
  setDirectionX(0);
  setDirectionY(0);
  setX((int)(Math.random()*600)+1);
  setY((int)(Math.random()*600)+1);
  setPointDirection((int)(Math.random()*360));
}
}
