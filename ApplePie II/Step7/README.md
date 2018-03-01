# Apple Pie

## About
In this word-guessing game, the player has a limited number of turns to guess the letters in a word. Each incorrect guess results in an apple falling off the tree. The player wins by guessing the word correctly before all the apples are gone.

### Step 7: Create a structure for Game

- Make sure the iOS tab is selected and then select Swift file
- Call it Game
- Go to this new file, delete the `import Foundation`, and create a struct Game
- Now select the ViewController.swift file and cut all the variables that are not an IBOutlet including the computed property.
- Paste them in the Game. Swift file inside the struct.
- Set all variables in Game to private.
- Go to ViewController.swift.
- Add a variable game (`var game = Game()`).
- Go to Game.swift
- Create a mutating function called `startNewRound`
- Go to ViewController.swift.
- In the function, `startNewRound` cut the first two assignments and paste them into the mutating function in Game.
- Call `game.startNewRound` inside the `startNewRound` function of the ViewController.
- In `formatWord` use the `game.formattedWord`
- Set access control of the property `remainingAttempts` to `private(set)`
- Do the same for the `win` and `loose` variables.

