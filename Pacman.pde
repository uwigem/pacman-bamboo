public class Pacman{

  private int xCoord;
  private int yCoord;
  private int direction;
  private PImage image;//size 20X20
 
  public Pacman(x,y){
    direct = 0;
    xCoord = x;
    yCoord = y;
    image = //load image;
  }
  
  public void updateXY(Pacmap map){
    //depending on direction, create test coordinates
    //test if test coordinate is a wall with map.checkWall(x,y);
    //if a true, direction is 0
    //if false, update x and y to be test coordinates
  }
  
  public void updateDirection(int keyDir){
    //based on keys, update x and y
    //change PImage
  }
  
}
