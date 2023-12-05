class Star
{
  private int myX, myY, myColor;
  public Star()
  {
    myColor = color(255);
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
  }
  public void show()
  {
    stroke(myColor);
    ellipse(myX, myY, 2, 2);
  }
}
