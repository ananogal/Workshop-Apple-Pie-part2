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
  var currentWord = ""

  var formattedWord: String {
    var wordFormatted = ""
    for _ in currentWord {
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

  func startNewRound() {
    currentWord = listOfWords.removeFirst()

    for button in letterButtons {
      button.isEnabled = true
    }
    treeImageView.image = UIImage(named:"Tree \(MAXIMUM_ATTEMPTS)")
    wordLabel.text = self.formattedWord
  }
}
