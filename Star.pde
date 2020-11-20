class Star
{
  int starX;
  int starY;
  int starColor;
  int starSize;
  public Star()
  {
    starColor = color(161, 246, 255, (int)(Math.random()*300));
    starX = (int)(Math.random()*495)+5;
    starY = (int)(Math.random()*495)+5;
    starSize = (int)(Math.random()*6)+2;
  }
  public void show()
  {
    noStroke();
    fill(starColor);
    ellipse(starX, starY, starSize, starSize);
  }
}
