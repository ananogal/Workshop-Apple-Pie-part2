//
//  ApplePieTests.swift
//  ApplePieTests
//
//  Created by Ana Nogal on 11/02/2018.
//  Copyright © 2018 Ana Nogal. All rights reserved.
//

import XCTest
@testable import ApplePie

class ViewControllerTests: XCTestCase {

  var controller: ViewController!

  override func setUp() {
    super.setUp()
    let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
    controller = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
  }

  override func tearDown() {
    controller = nil
    super.tearDown()
  }

  func test_shouldStartRoundWithAWordWithUnderscores() {
    let word = "_ _ _ _ _"

    controller.loadViewIfNeeded()

    XCTAssertEqual(controller.wordLabel.text, word, "Word is not formatted as expected")
  }

  func test_shouldStartRoundWithImageOfTreeWith7Apples() {
    let image = UIImage(named: "Tree 7")

    controller.loadViewIfNeeded()

    XCTAssertEqual(controller.treeImageView.image, image, "Image im treeImageView is not 'Tree 7'")
  }

  func test_shouldStartRoundWithWinsAndLossesEqualToZero() {
    let score = "Wins: 0 Looses: 0"

    controller.loadViewIfNeeded()

    XCTAssertEqual(controller.scoreLabel.text, score, "Wins and looses are not Zero")
  }

  func test_shouldStartRoundWithAllButtonsEnabled() {

    controller.loadViewIfNeeded()

    assertButtonsAreEnabled()
  }

  func test_shouldSetWordWithFirstWordInListOfWords() {
    let word = "_ _ _ _"
    controller.listOfWords = ["test"]

    controller.loadViewIfNeeded()

    XCTAssertEqual(controller.wordLabel.text, word, "The word is not the first word from the list.")
  }

  func test_shouldDisableTheButtonThatWasTapped() {
    let button = createButtonWithTitle("T")
    button.isEnabled = true
    controller.loadViewIfNeeded()

    controller.buttonTapped(button)

    XCTAssertFalse(button.isEnabled, "The buton tapped is not disabled")
  }

  func test_shouldAddGuessedLetterToWordLabel() {
    let word = "w _ _ _"
    controller.listOfWords = ["word"]
    let button = createButtonWithTitle("W")
    controller.loadViewIfNeeded()

    controller.buttonTapped(button)

    XCTAssertEqual(controller.wordLabel.text, word, "The guessed letter is not in the wordLabel")
  }

  func test_shouldSetTreeImageToTree6WhenLetterNotFoundInCurrentWord() {
    let image = UIImage(named: "Tree 6")
    createNotFoundWordScenario()

    XCTAssertEqual(controller.treeImageView.image, image, "image in treeImageView is not 'Tree 6'.")
  }

  func test_shouldUpdateScoreLabelWithWinsValueWhenPlayerGuessesWord() {
    let score = "Wins: 1 Looses: 0"

    createPlayerWinsScenario()

    XCTAssertEqual(controller.scoreLabel.text, score, "Wins value isn't the same.")
  }

  func test_shouldUpdateScoreLabelWithLoosesValueWhenPlayerCantGuessWord() {
    let score = "Wins: 0 Looses: 1"

    createPlayerLoosesScenario()

    XCTAssertEqual(controller.scoreLabel.text, score, "Looses value isn't the same.")
  }

  func test_shouldSetWordToGameOverIfThereAreNoMoreWords() {
    createNoMoreWordsScenario()

    XCTAssertEqual(controller.wordLabel.text, "GAME OVER", "The game isn't over.")
  }

  func test_shouldSetTreeImageToTree0IfThereAreNoMoreWords() {
    let image = UIImage(named: "Tree 0")

    createNoMoreWordsScenario()

    XCTAssertEqual(controller.treeImageView.image, image, "image in treeImageView is not 'Tree 0'.")
  }

  func test_shouldDisableAllButtonsIfThereAreNoMoreWords() {
    createNoMoreWordsScenario()

    assertButtonsAreDisabled()
  }

  private func createNotFoundWordScenario(){
    controller.listOfWords = ["word"]
    let button = createButtonWithTitle("T")

    controller.loadViewIfNeeded()
    controller.buttonTapped(button)
  }

  private func createButtonWithTitle(_ title: String) -> UIButton{
    let button = UIButton()
    button.setTitle(title, for: .normal)
    return button
  }

  private func assertButtonsAreEnabled() {
    for button in controller.letterButtons {
      XCTAssertTrue(button.isEnabled, "Button \(button.titleLabel?.text ?? "button") is disabled")
    }
  }

  private func assertButtonsAreDisabled() {
    for button in controller.letterButtons {
      XCTAssertFalse(button.isEnabled,  "Button \(button.titleLabel?.text ?? "button") is enabled")
    }
  }

  private func createNoMoreWordsScenario() {
    controller.listOfWords = ["test"]
    let buttonT = createButtonWithTitle("T")
    let buttonE = createButtonWithTitle("E")
    let buttonS = createButtonWithTitle("S")
    controller.loadViewIfNeeded()

    controller.buttonTapped(buttonS)
    controller.buttonTapped(buttonE)
    controller.buttonTapped(buttonT)
  }

  private func createPlayerWinsScenario() {
    controller.listOfWords = ["test", "AnotherTest"]
    let buttonT = createButtonWithTitle("T")
    let buttonE = createButtonWithTitle("E")
    let buttonS = createButtonWithTitle("S")
    controller.loadViewIfNeeded()

    controller.buttonTapped(buttonS)
    controller.buttonTapped(buttonE)
    controller.buttonTapped(buttonT)
  }

  private func createPlayerLoosesScenario() {
    controller.listOfWords = ["test", "AnotherTest"]
    let buttonZ = createButtonWithTitle("Z")
    let buttonY = createButtonWithTitle("Y")
    let buttonX = createButtonWithTitle("X")
    let buttonW = createButtonWithTitle("W")
    let buttonV = createButtonWithTitle("V")
    let buttonU = createButtonWithTitle("U")
    let buttonR = createButtonWithTitle("R")
    controller.loadViewIfNeeded()

    controller.buttonTapped(buttonZ)
    controller.buttonTapped(buttonY)
    controller.buttonTapped(buttonX)
    controller.buttonTapped(buttonW)
    controller.buttonTapped(buttonV)
    controller.buttonTapped(buttonU)
    controller.buttonTapped(buttonR)
  }
}
