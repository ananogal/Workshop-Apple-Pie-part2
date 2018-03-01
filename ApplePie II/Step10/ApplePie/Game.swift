//
//  Game.swift
//  ApplePie
//
//  Created by Ana Nogal on 17/02/2018.
//  Copyright © 2018 Ana Nogal. All rights reserved.
//

struct Game {
  private let MAXIMUM_ATTEMPTS = 7
  private(set) var remainingAttempts = 0
  private var listOfWords = ["swift", "csharp", "java"]
  private var word = ""
  private(set) var wins = 0
  private(set) var looses = 0
  private var guessedLetters = [Character]()

  var formattedWord: String {
    var wordFormatted = ""
    for letter in word {
      if guessedLetters.contains(letter) {
        wordFormatted += "\(letter)"
      } else {
        wordFormatted += "_"
      }
    }
    return wordFormatted
  }

  var isRoundFinished: Bool {
    return playerWon() || playerLost()
  }

  var isGameOver: Bool {
    return listOfWords.isEmpty && isRoundFinished
  }

  mutating func startNewRound() {
    if !listOfWords.isEmpty {
      remainingAttempts = MAXIMUM_ATTEMPTS
      word = listOfWords.removeFirst()
      guessedLetters = [Character]()
    }
  }

  mutating func playerGuessed(letter: Character) {
    guessedLetters.append(letter)
    if !word.contains(letter) {
      remainingAttempts -= 1
    }
    updateState()
  }

  private func playerWon() -> Bool {
    return word == formattedWord
  }

  private func playerLost() -> Bool {
    return remainingAttempts == 0
  }

  private mutating func updateState() {
    if playerWon() {
      wins += 1
    }
    if playerLost() {
      looses += 1
    }
  }
}
