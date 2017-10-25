//your variable declarations here
Floater no = new Spaceship();
public int dir = 0;
public void setup() 
{
  background(0);
  size(500, 500);
  no.setX(50);
  no.setY(50);
}
public void draw() 
{
  background(0);
  no.show();
  no.move();
}
public void keyPressed()
{
  if (key == 'q')
  {
    no.setX((int)(Math.random()*501));
    no.setY((int)(Math.random()*501));
  }
  if (key == 'w')
  {
  no.accelerate(1);
  }
  if (key == 'a')
  {
  no.turn(-10);
  }
    if (key == 'd')
  {
  no.turn(10);
  }
}