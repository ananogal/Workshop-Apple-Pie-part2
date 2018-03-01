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
  let MAXIMUM_ATTEMPTS = 7
  var listOfWords = ["swift", "csharp", "java"]
  var word = ""
  var wins = 0
  var looses = 0

  var formattedWord: String {
    var wordFormatted = ""
    for _ in word {
      wordFormatted += "_"
    }
    return wordFormatted
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    startNewRound()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

  @IBAction func buttonTapped(_ sender: UIButton) {
    let buttonTitle = sender.titleLabel?.text! ?? ""
    print("Button \(buttonTitle) was tapped")
  }

  private func enableAllButtons() {
    for button in letterButtons {
      button.isEnabled = true
    }
  }

  private func formatWord() -> String {
    var letters = [String]()
    for letter in formattedWord {
      letters.append(String(letter))
    }

    return letters.joined(separator: " ")
  }

  private func updateUI() {
    treeImageView.image = UIImage(named:"Tree \(MAXIMUM_ATTEMPTS)")
    wordLabel.text = formatWord()
    scoreLabel.text = "Wins: \(wins) Looses: \(looses)"
  }

  func startNewRound() {
    word = listOfWords.removeFirst()
    enableAllButtons()
    updateUI()
  }
}
