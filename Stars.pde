class Stars //note that this class does NOT extend Floater
{
  private int myColor = (int)(Math.random()*101)+155;
  private int myX, myY;
  public Stars()
  {
    myX = (int)(Math.random()*501);
    myY = (int)(Math.random()*501);
  }
  public void show()
  {
    noStroke();
    fill(255,252, myColor);
    rect(myX,myY,3,3);
  }
}