//
//  Round.swift
//  ApplePie
//
//  Created by Ana Nogal on 17/02/2018.
//  Copyright © 2018 Ana Nogal. All rights reserved.
//

enum RoundState {
  case Win
  case Lost
  case None
  case GameOver
}

struct Round {
  private let MAXIMUM_ATTEMPTS = 7

  private var word: Word
  private(set) var remainingAttempts: Int
  private(set) var state: RoundState

  var formattedWord:String {
    return word.formattedWord
  }

  init(word: String) {
    remainingAttempts = MAXIMUM_ATTEMPTS
    state = .None
    self.word = Word(word: word)
  }

  mutating func playerGuessed(letter: String) {
    word.guessedLetter(letter)
    if !word.hasLetter(letter) {
      remainingAttempts -= 1
    }
    updateState()
  }

  private mutating func updateState() {
    if word.wasGuessed {
      state = .Win
    }
    if remainingAttempts == 0 {
      state = .Lost
    }
  }
}
