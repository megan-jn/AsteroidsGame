//your variable declarations here
Spaceship one = new Spaceship();
Star [] stars = new Star[200];
Planet [] planets = new Planet[7];
public void setup() 
{
  size(500, 500);
  for(int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }
  for(int j = 0; j < planets.length; j++)
  {
    planets[j] = new Planet();
  }
}
public void draw() 
{
  background(19, 21, 28);
  for(int i = 0; i < stars.length; i++)
  {
    stars[i].show();
  }
  for(int j = 0; j < planets.length; j++)
  {
    planets[j].show();
  }
  one.show();
  one.move();
}
public void keyPressed()
{
  if(key == 'a')
  {
    one.turn(-15);
  } else if(key == 'd')
  {
    one.turn(15);
  } else if(key == 'w') //pushes the ship with rockets in the direction it's pointing
  {
    one.accelerate(0.5);
  } else if(key == 'e')
  {
    one.hyperspace();
  }
}
