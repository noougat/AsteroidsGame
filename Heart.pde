class Heart
{
  private PImage health;
  private int myX, myY;
  private int lifeCount;
  public Heart(int x)
  {
    myX = x*25 + 10;
    myY = 5;
    health = loadImage ("heart.png");
    lifeCount = 3;
  }
    public void show()
  {
    image(health,myX,myY);
  }
}