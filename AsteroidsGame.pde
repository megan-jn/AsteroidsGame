//your variable declarations here
ArrayList <Bullet> shots = new ArrayList <Bullet>();
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
Spaceship one = new Spaceship();
Star [] stars = new Star[200];
Planet [] planets = new Planet[7];
int asteroidsLeft = 15;
int lives = 100;

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
  for(int k = 0; k < 15; k++)
  {
    asteroids.add(new Asteroid());
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
  for(int k = 0; k < asteroids.size(); k++)
  {
    asteroids.get(k).show();
    asteroids.get(k).move();
    float d = dist(one.getX(), one.getY(), asteroids.get(k).getX(), asteroids.get(k).getY());
    if(d < 20)
    {
      asteroids.remove(k);
      asteroidsLeft = asteroidsLeft - 1;
      lives = lives - 10;
    }
  }
  one.show();
  one.move();
  for(int i = 0; i < shots.size(); i++)
  {
    shots.get(i).move();
    shots.get(i).show();
  }
  for(int m = 0; m < asteroids.size(); m++)
  {
    for(int j = 0; j < shots.size(); j++)
    {
      float bulletDistance = dist((float)shots.get(j).getX(), (float)shots.get(j).getY(), (float)asteroids.get(m).getX(), (float)asteroids.get(m).getY());
      if(bulletDistance <= 10)
      {
        asteroids.remove(m);
        asteroidsLeft = asteroidsLeft - 1;
        m--;
        shots.remove(j);
        j--;
        break;
      }
    }     
  }
  for(int i = 0; i < shots.size(); i++)
  {
    if((float)shots.get(i).getX() == -5 || (float)shots.get(i).getX() == 505 || (float)shots.get(i).getY() == -5 || (float)shots.get(i).getY() == 505)
    {
      shots.remove(i);
    }
  }
  fill(255);
  textSize(20);
  text("Asteroids Left: " + asteroidsLeft, 10, 25); 
  text("Lives: " + lives, 390, 25);
  if(lives == 0)
  {
    fill(255, 58, 28);
    textSize(50);
    textAlign(CENTER);
    text("GAME OVER!", 250, 250);
  }
  if(asteroidsLeft == 0)
  {
    fill(250, 250, 147);
    textSize(50);
    textAlign(CENTER);
    text("YOU WIN!" , 250, 250);
  }
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
    one.accelerate(0.1);
  } else if(key == 'e')
  {
    one.hyperspace();
  } else if(key == ' ')
  {
    shots.add(new Bullet(one));
  }
}
