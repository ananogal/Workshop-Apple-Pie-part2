# Apple Pie

## About
In this word-guessing game, the player has a limited number of turns to guess the letters in a word. Each incorrect guess results in an apple falling off the tree. The player wins by guessing the word correctly before all the apples are gone.

### Step 5: Set the text of ```wordLabel``` to the word hidden with an underscore format

- Go to ViewController.swift
- Add a new function to display the hidden word correctly.
- Call it ```formatWord``` and make it return a String.
- In the function create an array of Strings: call it ```letters```.
- Iterate through the letters in ```formattedWord``` and add each one to this variable.
- (Remember that the letter is a Character, so you have to cast it to a String)
- Return a string by joining all elements of the array, separated by a space.
- Set the text of the ```wordLabel``` to the result of this function.
- Build and run the app.
