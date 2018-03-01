//
//  Game.swift
//  ApplePie
//
//  Created by Ana Nogal on 12/02/2018.
//  Copyright © 2018 Ana Nogal. All rights reserved.
//

struct Game {
  private var listOfWords: [String]
  private(set) var totalWins = 0
  private(set) var totalLosses = 0
  private var round: Round!

  var formattedWord: String {
    return round.formattedWord
  }

  var remainingAttempts: Int {
    return round.remainingAttempts
  }

  var isGameOver: Bool {
    return listOfWords.isEmpty && isRoundFinished
  }

  var isRoundFinished: Bool {
    return playerWon() || playerLost()
  }

  init(words: [String]) {
    listOfWords = words
  }

  mutating func startNewRound() {
    if !listOfWords.isEmpty {
      createNewRound()
    }
  }

  private mutating func createNewRound() {
    let word = listOfWords.removeFirst()
    round = Round(word: word)
  }

  private func playerWon() -> Bool {
    return round.state == .Win
  }

  private func playerLost() -> Bool {
    return round.state == .Lost
  }

  private mutating func update() {
    if playerWon() {
      totalWins += 1
    }
    if playerLost() {
      totalLosses += 1
    }
  }

  mutating func playerGuessed(_ letter: String) {
    round.playerGuessed(letter: letter)
    update()
  }
}
