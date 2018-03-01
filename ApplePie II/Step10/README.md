# Apple Pie

## About
In this word-guessing game, the player has a limited number of turns to guess the letters in a word. Each incorrect guess results in an apple falling off the tree. The player wins by guessing the word correctly before all the apples are gone.

### Step 10: Game Over

- Go to the Game file
- In ```startNewRound``` add an if to verify if the listOfWords is empty. If it does not, execute all the code that already exists.
- Create a computed property, name it ```isGameOver``` and make it return if the game is over.
- Go to ViewController file
- In ```updateGameUI``` before the existent code and an if to verify if the game is over. If it is the call ```gameOver()```
- Create the function ```gameOver``` and update here all the UI elements.
- Refactor your code by creating a function ```continuePlaying``` where you put the code that existed in the ```updateGameUI```
- Build and run the app.
