# Apple Pie

## About
In this word-guessing game, the player has a limited number of turns to guess the letters in a word. Each incorrect guess results in an apple falling off the tree. The player wins by guessing the word correctly before all the apples are gone.


### Step 1: Add IBAction to buttons

- Go to Main.storyboard and open the Assistant Editor.
- Select the first button: Button “A” and holding the control key drag it into the code file.
- In the dialogue in the Connection drop-down select Action.
- In the name field write “buttonTapped”.
- Make sure that in type you have “UIButton” selected.
- Hit the button "connect".
- Add this code to the action: sender.isEnabled = false
- Build and run the app.

### Challenge
- Add all buttons to the same IBAction.
