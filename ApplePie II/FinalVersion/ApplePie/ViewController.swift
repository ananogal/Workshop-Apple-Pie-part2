//
//  ViewController.swift
//  ApplePie
//
//  Created by Ana Nogal on 01/01/2018.
//  Copyright © 2018 Ana Nogal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var treeImageView: UIImageView!
  @IBOutlet var letterButtons: [UIButton]!
  @IBOutlet weak var wordLabel: UILabel!
  @IBOutlet weak var scoreLabel: UILabel!
  var listOfWords = ["swift", "csharp", "java"]
  var game: Game!
  let GAME_OVER = "GAME OVER"
  let GAME_OVER_FILENAME = "Tree 0"

  override func viewDidLoad() {
    super.viewDidLoad()
    initialiseGame()
  }

  private func initialiseGame() {
    game = Game(words: listOfWords)
    startNewRound()
    updateUI()
  }

  private func gameOver() {
    wordLabel.text = GAME_OVER
    treeImageView.image = UIImage(named: GAME_OVER_FILENAME)
    enableButtons(false)
  }

  private func continueToPlay() {
    if game.isRoundFinished {
      startNewRound()
    }
    updateUI()
  }

  private func updateGameUI() {
    if game.isGameOver {
      gameOver()
    } else {
      continueToPlay()
    }
  }

  @IBAction func buttonTapped(_ sender: UIButton) {
    sender.isEnabled = false
    let letter = sender.titleLabel?.text
    game.playerGuessed(letter!)
    updateGameUI()
  }

  private func enableButtons(_ enable: Bool) {
    for button in letterButtons {
      button.isEnabled = enable
    }
  }

  private func formattWord() -> String {
    var letters = [String]()
    for letter in game.formattedWord {
      letters.append(String(letter))
    }
    return letters.joined(separator: " ")
  }

  private func updateUI(){
    wordLabel.text = formattWord()
    scoreLabel.text = "Wins: \(game.totalWins) Looses: \(game.totalLosses)"
    treeImageView.image = UIImage(named: "Tree \(game.remainingAttempts)")
  }

  private func startNewRound() {
    game.startNewRound()
    enableButtons(true)
  }
}
