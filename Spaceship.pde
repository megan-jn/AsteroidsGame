class Spaceship extends Floater  
{   
    public Spaceship() //constructor
    {
      corners = 3;  //the number of corners, a triangular floater has 3   
      xCorners = new int[corners];   
      yCorners = new int[corners]; 
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      myColor = color(222, 222, 220);   
      myCenterX = myCenterY = 250; //holds center coordinates   
      myXspeed = myYspeed = 0; //holds the speed of travel in the x and y directions   
      myPointDirection = (int)(Math.random()*360); //holds current direction the ship is pointing in degrees  
    }
    public void hyperspace()
    {
      myXspeed = myYspeed = 0;
      myCenterX = (int)(Math.random()*495)+5;
      myCenterY = (int)(Math.random()*495)+5;
      myPointDirection = (int)(Math.random()*360);
    }
    public int getX()
    {
      return (int)myCenterX;
    }
    public int getY()
    {
      return (int)myCenterY;
    }
    public double getPointDirection()
    {
      return myPointDirection;
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
