class Star //note that this class does NOT extend Floater
{  
  private int myX, myY;
  public Star(){
    myX = (int)(Math.random()*750);
    myY = (int)(Math.random()*750);
  }
  public void show(){
   fill(255);
   stroke(255);
   ellipse(myX, myY, 2, 2);
  }
}
