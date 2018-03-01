# Apple Pie

## About
In this word-guessing game, the player has a limited number of turns to guess the letters in a word. Each incorrect guess results in an apple falling off the tree. The player wins by guessing the word correctly before all the apples are gone.

### Step 3: Make all buttons available

- Go to ViewController.swift
- Inside of startNewRound function add this code:
``` for button in letterButtons {
    button.isEnabled = true
  }
```
- Extract to a new function.
- Using the new feature of Xcode: refactoring:
    - Select the code
    - Click it, and you’ll see that a popup menu will appear
    - Search for “Refactor”
    - Select “Extract Method”
    - Give it the name ```enableAllButtons```
