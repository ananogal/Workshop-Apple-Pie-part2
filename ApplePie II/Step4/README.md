# Apple Pie

## About
In this word-guessing game, the player has a limited number of turns to guess the letters in a word. Each incorrect guess results in an apple falling off the tree. The player wins by guessing the word correctly before all the apples are gone.

### Step 4: Set the text of ```wordLabel``` to the word hidden with an underscore format

- Go to ViewController.swift
- Create a variable ```listOfWords``` as an array of Strings and add some words to it.
- Create a variable ```word``` to hold the value of the current word.
- Create a computed property to compute the currentWord to a different format. Call it ```formattedWord```.
- Return for each letter an underscore.
```
var formattedWord: String {
var wordFormatted = ""
for _ in currentWord {
wordFormatted += "_"
}
return wordFormatted
}
```
- Set the text of the ```wordLabel``` to it.
- Build and run the app.

