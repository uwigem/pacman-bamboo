  // Michael Fang
// 4/30/2018
// Copyright 2018 UW IGEM
// This class represents an entire board
// of pacman game

public class PacMap{
  private static final int WALL = 0;
  private static final int BEAN = 1;
  private static final int OFFSET = 20; // default size of a single bucket
  private static final int ROW = 12; // number of rows of our two dimensional array map
  private static final int COL = 45; // number of columns of our two dimensional array map
  private int score; // keeping track of user's score
  
  int[][] map = {
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
    {0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
    {0,1,0,0,0,1,0,0,0,0,0,1,1,1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0},
    {0,1,1,0,1,1,0,1,1,1,1,1,1,1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1,0,1,0,1,0},
    {0,1,1,0,1,1,0,1,1,1,1,1,1,1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,1,1,1,0,1,0,1,0,1,0},
    {0,1,1,0,1,1,0,1,1,0,0,0,1,1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,0,1,0,0,0,0,0,1,0,1,0,1,0,1,0},
    {0,1,1,0,1,1,0,1,1,1,0,1,1,1,0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,1,1,1,1,1,0,1,0,1,0,1,0},
    {0,1,0,0,0,1,0,0,0,0,0,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1,0,1,0,1,0},
    {0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,1,0,1,0,1,0},
    {0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
  };
  
  

  public int getScore() {
    return 0;
  }
  

  public void update() {
  }
  
  /** check if the coordinate responding to the
      given x, y value represent a Wall brick in our game
      @param x the x coordinate of the map
      @param y the y coordinatre of the map 
      @return true if the coordinate represents a 
              wall brick, false otherwise */
  public boolean checkWall(int x, int y) {
     // check if x, y is out of bound
     if (x >= COL || y >= ROW) {
       return false;
     }
     return map[y][x] == WALL;
  }
  

  public void display() {
     // displaying the maze
     for (int i = 0; i < map.length; i++) {
       for (int j = 0; j < map[i].length; j++) {
         if (map[i][j] == WALL) {
           rect(100 + j * OFFSET, 100 + i * OFFSET, OFFSET, OFFSET);
         }
       }
     }
  }
  

  public void reset() {
  
  }
}
