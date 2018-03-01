# Apple Pie

## About
In this word-guessing game, the player has a limited number of turns to guess the letters in a word. Each incorrect guess results in an apple falling off the tree. The player wins by guessing the word correctly before all the apples are gone.

### Step 8: Guessing a letter

- Go to ViewController.swift and focus on IBAction `buttonTapped`
- Create a constant to hold the title of the button. (`let buttonTitle = sender.titleLabel?.text.lowercased()` )
- Pass this new constant to the game.
- Go to Game.swift
- Create an array of Characters named `guessedLetters`
- Go to `startNewRound` and initialise the `guessedLetters` array.
- Create a mutating function `playerGuessed` that has as an argument: letter.
- Inside this function add the letter to the  `guessedLetters` array.
- Then verify if the letter is in the word.
- If it's not, subtract one from `remainingAttempts`
- Go to the computed property `formatttedWord`
- Verify which letters were already guessed and add them to the guessed word instead of the underscores.
- Go to ViewController.swift
- At the end of the action `buttonTapped` add `updateUI`, so the values are updated to our view.
- Build and run the app.

