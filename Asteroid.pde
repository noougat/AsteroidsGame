class Asteroid extends Floater
{
  private int rotSpeed;
  public Asteroid() {
    rotSpeed = (int)(Math.random()*11)-5;
    corners = 4;
    int[] xS = {-10,10,10,-10};
    int[] yS = {-10,-10,10,10};
    xCorners = xS;
    yCorners = yS;
    myColor = (100);
    myCenterX = 250;
    myCenterY = 250;
    myDirectionX = (Math.random()*3)-2;
    myDirectionY = (Math.random()*3)-2;
    myPointDirection = (int)(Math.random()*361);
  }
  public void move()
  {
   super.move();
   turn(rotSpeed);
  }
    public void setX(int x) { myCenterX = x;};  
    public int getX() { return (int)myCenterX; };   
    public void setY(int y) { myCenterY = y;};   
    public int getY() { return (int)myCenterY; };
    public void setDirectionX(double x){ myDirectionX = x;};   
    public double getDirectionX() { return myDirectionX; };   
    public void setDirectionY(double y){ myDirectionY = y;};   
    public double getDirectionY() { return myDirectionY; };   
    public void setPointDirection(int degrees) { myPointDirection = degrees; };   
    public double getPointDirection() { return myPointDirection; };
}