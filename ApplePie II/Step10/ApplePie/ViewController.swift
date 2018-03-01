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

  var game = Game()

  override func viewDidLoad() {
    super.viewDidLoad()
    startNewRound()
    updateUI()
  }

  private func gameOver() {
    wordLabel.text = "GAME OVER"
    for button in letterButtons {
      button.isEnabled = false
    }
    treeImageView.image = UIImage(named: "Tree 0")
  }

  private func continuePlaying() {
    if game.isRoundFinished {
      startNewRound()
    }
    updateUI()
  }

  private func updateGameUI()
  {
    if game.isGameOver {
      gameOver()
    } else {
      continuePlaying()
    }
  }

  @IBAction func buttonTapped(_ sender: UIButton) {
    sender.isEnabled = false
    let buttonTitle = sender.titleLabel?.text?.lowercased()
    game.playerGuessed(letter: Character(buttonTitle!))
    updateGameUI()
  }

  private func enableAllButtons() {
    for button in letterButtons {
      button.isEnabled = true
    }
  }

  private func formatWord() -> String {
    var letters = [String]()
    for letter in game.formattedWord {
      letters.append(String(letter))
    }

    return letters.joined(separator: " ")
  }

  private func updateUI() {
    treeImageView.image = UIImage(named:"Tree \(game.remainingAttempts)")
    wordLabel.text = formatWord()
    scoreLabel.text = "Wins: \(game.wins) Looses: \(game.looses)"
  }

  private func startNewRound() {
    game.startNewRound()
    enableAllButtons()
    updateUI()
  }
}
