class Asteroid extends Floater
{
  private int rotSpeed;
  public Asteroid(){
      corners = 12;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners = new int[]{-14,-14,-6,0,6,11,16,11,6,0,-6,-15};
      yCorners = new int[]{0,-5,-8,-11,-12,-5,0,5,10,12,12,5};
      myCenterX = Math.random()*50;
      myCenterY = Math.random()*50;
      myDirectionX = (Math.random()*3)-1.5;
      myDirectionY = (Math.random()*3)-1.5;
      myPointDirection = 0;
      myColor = color(130);
      rotSpeed = ((int)(Math.random()*5)-4);
     }
      public void move(){
       rotate((int)(rotSpeed));
       super.move();
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
}  
