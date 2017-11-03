class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 32;
    int[] xS = {7*2, 7*2, 9*2, 9*2, 5*2, 5*2, 7*2, 7*2, 5*2, 5*2, 3*2, 3*2, 1*2, 1*2, -1*2, -1*2, -3*2, -3*2, -5*2 ,-5*2, -7*2, -7*2, -9*2, -9*2, -7*2, -7*2, -3*2, -3*2, -1*2, -1*2, 1*2, 1*2};
    int[] yS = {-7*2, -5*2, -5*2, -1*2, -1, 1*2, 1*2, 3*2, 3*2,7*2, 7*2, 9*2, 9*2, 11*2, 11*2, 9*2, 9*2, 11*2, 11*2,7*2, 7*2, 5*2, 5*2,1*2, 1*2,3*2, 3*2, -1*2, -1*2, -5*2,-5*2,-7*2};
    xCorners = xS;
    yCorners = yS;
    myColor = color(112,193,101);
    myCenterX = 50;
    myCenterY = 50;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
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