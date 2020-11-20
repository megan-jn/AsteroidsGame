class Planet
{
  int planetX;
  int planetY;
  int planetColor;
  int planetSize;
  public Planet()
  {
    planetColor = color(242, 105, 78, (int)(Math.random()*200)+150);
    planetX = (int)(Math.random()*490)+10;
    planetY = (int)(Math.random()*490)+10;
    planetSize = (int)(Math.random()*15)+7;
  }
  public void show()
  {
    noStroke();
    fill(planetColor);
    ellipse(planetX, planetY, planetSize, planetSize);
  }
}
