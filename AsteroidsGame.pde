//your variable declarations here
Floater no = new Spaceship();
Stars[] star = new Stars[200];
public int dir = 0;
public void setup() 
{
  background(0);
  size(500, 500);
  for ( int i = 0; i < star.length; i++)
  star[i] = new Stars();
}
public void draw() 
{
  background(0);
  no.show();
  no.move();
  for ( int i = 0; i < star.length; i++)
  star[i].show();
}
public void keyPressed()
{
  if (key == 'q')
  {
    no.setX((int)(Math.random()*501));
    no.setY((int)(Math.random()*501));
    no.setDirectionX(0);
    no.setDirectionY(0);
    no.setPointDirection((int)(Math.random()*361));
  }
  if (key == 'w')
  {
  no.accelerate(0.5);
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