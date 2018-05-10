/**
@Param: takes in the pacMap to check if there are walls
@effect: If there are no walls, the ghost will continue to move in the same direction.
If there is a wall in front of the ghost, the ghost will change directions.
@return: The ghost's new direction.
*/

public class Ghost extends pacMap {
  private int direction = random(4);
  private PImage red;
  private PImage orange;
  private PImage blue;
  private PImage pink;
  
  void setup(){
    size(20,20);
    redGhost = loadImage("redGhost.png");
    orangeGhost = loadImage("orangeGhost.png");
    blueGhost = loadImage("blueGhost.jpeg");
    pinkGhost = loadImage("pinkGhost.png");
  }
  
  public getMove(pacMap){
    boolean update = check.Wall();
    if (update == 'TRUE'){
      direction = random(5);
      return direction;
    } else {
      return direction;
    }
  }
  
  public getImage(PImage character){
    if (character == 'blue') {
      return blueGhost;
    } else if (char == 'red') {
      return redGhost;
    } else if( character == 'pink') {
      return pinkGhost;
    } else if (character == 'orange') {
      return orangeGhost;
    }
  }
  
  public display(int x, int y) {
    rect(x,y,30,10);
  }
}
