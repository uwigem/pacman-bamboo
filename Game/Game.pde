// Michael Fang
// 4/30/2018
// Copyright 2018 UW IGEM
// This program shall create a pacman game for
// the user and start the game

PacMap maze = new PacMap();
// shall set everything the program needs
// to run a pacman game
void setup() {
  size(1500,1500);
}


// draw everything needed for the user
void draw() {
  // loop
  if (!maze.checkWall(2, 1)) {
    background(400, 400);
  }
  
  maze.display();
}


// listen to user's input
void keyPressed() {

     
}



// restart the game
void restart() {

}

// display win messsage for user
void displayWinMes() {


}

// display lost message for user
void displayLostMes() {


}
