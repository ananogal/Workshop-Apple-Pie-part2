# Apple Pie

## About
In this word-guessing game, the player has a limited number of turns to guess the letters in a word. Each incorrect guess results in an apple falling off the tree. The player wins by guessing the word correctly before all the apples are gone.

### Step 9: Winning or Losing a game

- Go to Game
- Create a mutating function ```updateState```
- Verify if the player won (the word should be equal to formattedWord) and added one to wins
- Verify if the player lost (the `remainingAttempts` should be 0) and add one to looses
- Build and run the app.

- To start a new round go to the ViewController
- In the IBAction verify if the round is finished (the player has won or lost the round)
- If one is true then call ```startNewRound```
- Otherwise, call ```updateUI()```
- Build and run the app.

- Go to the Game file
- Create a computed property ```isRoundFinished``` that returns if the player won or lost
- Go to the ViewController file
- Create a function ```updateGameUI``` and call it in the IBAction.
- Inside the function call ```startNewRound``` if the round is finished or ```updateUI``` if it's not.
- Build and run the app.
