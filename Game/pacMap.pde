// Michael Fang
// 4/30/2018
// Copyright 2018 UW IGEM
// This class represents an entire board
// of pacman game

public class pacMap implements GameMap{
  private static final int WALL = 0;
  private static final int BEAN = 1;
  private static final int offset = 100;
  private int score; // keeping track of user's score
  
  int[][] map = {
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
    {0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
    {0,1,0,0,0,1,0,0,0,0,0,1,1,0,0,0,1,0,0,0,0,0,1,1,0},
    {0,1,1,0,1,1,0,1,1,1,1,1,1,0,1,1,1,0,1,0,1,0,1,1,0},
    {0,1,1,0,1,1,0,1,1,1,1,1,1,0,1,1,1,0,1,0,1,0,1,1,0},
    {0,1,1,0,1,1,0,1,1,0,0,0,1,0,0,0,1,0,1,0,1,0,1,1,0},
    {0,1,1,0,1,1,0,1,1,1,0,1,1,0,1,1,1,0,1,0,1,0,1,1,0},
    {0,1,0,0,0,1,0,0,0,0,0,1,1,0,0,0,1,0,1,1,1,0,1,1,0},
    {0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
    {0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  };
  
  

  public int getScore() {
    return 0;
  }
  

  public void update() {
  }
  

  public void display() {
     // displaying the maze
     for (int i = 0; i < map.length; i++) {
       for (int j = 0; j < map[i].length; j++) {
         if (map[i][j] == WALL) {
           rect(100 + j * 50, 100 + i * 50, 50, 50);
         }
       }
     }
  }
  

  public void reset() {
  
  }
}
