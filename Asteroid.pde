class Asteroid extends Floater
{
  private int rotSpeed;
  public Asteroid() {
    rotSpeed = (int)(Math.random()*11)-5;
    corners = 32;
    int[] xS = {7*1, 7*1, 9*1, 9*1, 5*1, 5*1, 7*1, 7*1, 5*1, 5*1, 3*1, 3*1, 1*1, 1*1, -1*1, -1*1, -3*1, -3*1, -5*1 ,-5*1, -7*1, -7*1, -9*1, -9*1, -7*1, -7*1, -3*1, -3*1, -1*1, -1*1, 1*1, 1*1};
    int[] yS = {-7*1, -5*1, -5*1, -1*1, -1, 1*1, 1*1, 3*1, 3*1,7*1, 7*1, 9*1, 9*1, 11*1, 11*1, 9*1, 9*1, 11*1, 11*1,7*1, 7*1, 5*1, 5*1,1*1, 1*1,3*1, 3*1, -1*1, -1*1, -5*1,-5*1,-7*1};
    xCorners = xS;
    yCorners = yS;
    myColor = color(100,191,190);
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