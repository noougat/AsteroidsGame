//your variable declarations here
Floater no = new Spaceship();
Stars[] star = new Stars[200];
Asteroid[] asteroids = new Asteroid[10];
public void setup() 
{
  background(0);
  size(500, 500);
  for ( int i = 0; i < star.length; i++)
    star[i] = new Stars();
  for ( int i = 0; i < asteroids.length; i++)
    asteroids[i] = new Asteroid();
}
public void draw() 
{
  background(0);
  for ( int i = 0; i < star.length; i++)
    star[i].show();
  for ( int i = 0; i < asteroids.length; i++) 
      asteroids[i].show();
    for ( int i = 0; i < asteroids.length; i++) 
      asteroids[i].move();
  no.show();
  no.move();
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