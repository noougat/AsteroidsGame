//your variable declarations here
Spaceship no = new Spaceship();
Stars[] star = new Stars[200];
ArrayList <Bullet> pew = new ArrayList <Bullet>();
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
public void setup() 
{
  background(0);
  size(500, 500);
  for ( int i = 0; i < star.length; i++)
    star[i] = new Stars();
  for ( int i = 0; i < 15; i++ )
  {
    asteroids.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for ( int i = 0; i < star.length; i++)
    star[i].show();
  for ( int i = 0; i < pew.size(); i++) 
  {
    pew.get(i).show();
    pew.get(i).move();
  }
  no.show();
  no.move();
  for ( int i = 0; i < asteroids.size(); i++) 
  {
    asteroids.get(i).show();
    asteroids.get(i).move();
    if (dist(asteroids.get(i).getX(), asteroids.get(i).getY(), no.getX(), no.getY()) < 20)
    asteroids.remove(i);
    for( int j = 0; j < pew.size(); j++)
    {
      if (dist(pew.get(j).getX(), pew.get(j).getY(), asteroids.get(i).getX(), asteroids.get(i).getY())< 30)
      {
      asteroids.remove(i);
      pew.remove(j);
      break;
      }
    }
  }
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
  if (key == 's')
  {
    no.accelerate(-0.5);
  }
  if (key == 'a')
  {
    no.turn(-10);
  }
  if (key == 'd')
  {
    no.turn(10);
  }
  if (key == ' ')
  {
    pew.add(new Bullet(no));
  }
}