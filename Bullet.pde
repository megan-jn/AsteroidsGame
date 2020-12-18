class Bullet extends Floater{
  int bulletColor;
  
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    myXspeed = myYspeed = 0;
    bulletColor = color(255, 84, 71, 100);
    accelerate(2.0);
  }
  public void show(){
    stroke(255);
    fill(bulletColor);
    ellipse((float) myCenterX, (float) myCenterY, 10, 10);
  }
  public void move()
  {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public double getX()
  {
    return myCenterX;
  }
  public double getY()
  {
    return myCenterY;
  }
  public double getSpeedX()
  {
    return myXspeed;
  }
  public double getSpeedY()
  {
    return myYspeed;
  }
}
