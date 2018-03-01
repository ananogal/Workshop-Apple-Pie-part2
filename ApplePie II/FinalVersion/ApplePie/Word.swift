//
//  Word.swift
//  ApplePie
//
//  Created by Ana Nogal on 17/02/2018.
//  Copyright © 2018 Ana Nogal. All rights reserved.
//

struct Word {
  private var guessedLetters = [Character]()
  private var wordToGuess: String

  var formattedWord: String {
    var guessedWord = ""
    for letter in wordToGuess {
      if guessedLetters.contains(letter) {
        guessedWord += "\(letter)"
      } else {
        guessedWord += "_"
      }
    }
    return guessedWord
  }

  var wasGuessed: Bool {
    return wordToGuess == formattedWord
  }

  init(word: String) {
    self.wordToGuess = word.lowercased()
    guessedLetters = [Character]()
  }

  mutating func guessedLetter(_ letter: String) {
    let theLetter = Character(letter.lowercased())
    if(hasLetter(letter)){
      guessedLetters.append(theLetter)
    }
  }

  func hasLetter(_ letter: String) -> Bool {
    let theLetter = Character(letter.lowercased())
    return wordToGuess.contains(theLetter)
  }
}
