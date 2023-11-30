class Star
{
  private int myX, myY, mySize1, mySize2;
  public Star() {
    myX = (int)(Math.random()*499);
    myY = (int)(Math.random()*499);
    mySize1 = (int)(Math.random()*5);
    mySize2 = (int)(Math.random()*5);
  }
  
  public void show() {
    noStroke();
    fill(255);
    ellipse(myX,myY,mySize1,mySize2);
  }
}
