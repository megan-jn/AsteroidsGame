class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    rotSpeed = Math.random()*3 -1;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -5;
    yCorners[0] = -5;
    xCorners[1] = -9;
    yCorners[1] = 0;
    xCorners[2] = -5;
    yCorners[2] = 5;
    xCorners[3] = 5;
    yCorners[3] = 5;
    xCorners[4] = 9;
    yCorners[4] = 0;
    xCorners[5] = 5;
    yCorners[5] = -5;
    myColor = color(209, 199, 199, 150);
    myCenterX = (int)(Math.random()*495)+5;
    myCenterY = (int)(Math.random()*495)+5;
    myXspeed = Math.random()*2 -1;
    myYspeed = Math.random()*2 -1;
    myPointDirection = 0;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public int getX()
  {
    return (int)myCenterX;
  }
  public int getY()
  {
    return (int)myCenterY;
  }
}
    
