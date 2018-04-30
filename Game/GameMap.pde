// Michael Fang
// 4/30/2018
// Copyright 2018 UW IGEM
// This is the interface for a general pacman map
// it includes several methods that a pacman map
// must implement

public interface GameMap{
  
  // return the current score of
  // the user
  // @return the current score
  public int getScore();
  
  // update the current state
  // of this pacmanMap which
  // includes all the figures'
  // states like direction, color
  public void update();
  
  // display the entire view of the game
  // whose state is stored in this class
  public void display();
  
  // reset the state of this map to
  // initial state
  public void reset();


}
