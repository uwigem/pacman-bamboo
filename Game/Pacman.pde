public class Pacman{

  private int xCoord;
  private int yCoord;
  private int direction;//1 = N, -1 = S, 2 = E, -2 = W
  private PImage currentImage;//size 20X20
  private PImage imageN = loadImage("pacmanN.png");
  private PImage imageS = loadImage("pacmanS.png");
  private PImage imageE = loadImage("pacmanE.png");
  private PImage imageW = loadImage("pacmanW.png");
  
  public Pacman(x,y){
    imageN.resize(20,20);
    imageS.resize(20,20);
    imageE.resize(20,20);
    imageW.resize(20,20);
    direction = 1;
    xCoord = x;
    yCoord = y;
    currentImage = imageN;
  }
  
  public void updateXY(Pacmap map){
    //depending on direction, create test coordinates
    //test if test coordinate is a wall with map.checkWall(x,y);
    //if a true, direction is 0
    //if false, update x and y to be test coordinates
    int testX = xCoord;
    int testY = yCoord;
    if(direction == 1){
      testY--;
    }else if(direction == -1){
      testY++;
    }else if(direction == 2){
      testX++;
    }else if(direction == -2){
      testX--;
    }
    
    if(!map.checkWall()){
      xCoord = testX;
      yCoord = testY;
    }
  }
  
  public void updateDirection(char keyDir){
    //based on keys, update direction
    //change PImage
    if(keyDir == 'w'){
      direction = 1;
      image = imageN;
    }else if(keyDir == 's'){
      direction = -1;
      image = imageS;
    }else if(keyDir == 'a'){
      direction = 2;
      image = imageW;
    }else if(keyDir == 'd'){
      direction = -2;
      image = imageE;
    }  
  }
  
  public PImage getImage(){
    return currentImage; 
  }
  
}
