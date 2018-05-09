
public class Player {
 
  private int lives; // the user's lives
  private int score; // the user's current scores
  
  /** sets the amount of lives of the player */
  public Player() {
    this.lives = 3;
    this.score = 0;
  }
  
  /** sets the amount of lives
  @param: boolean if player is eaten
  @effect: lives are reduced
  @return: the number of lives
  */
  public void lives() {
  }
  /** sets the amount of score
  @param: boolean if player is eaten or is eating
  @effect: score is restarted if eaten or increased if eating
  @return: the score number
  */
  public void score() {
  }
  
}
