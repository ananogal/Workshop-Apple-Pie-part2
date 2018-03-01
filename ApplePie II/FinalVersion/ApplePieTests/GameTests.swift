//
//  GameTests.swift
//  ApplePieTests
//
//  Created by Ana Nogal on 12/02/2018.
//  Copyright © 2018 Ana Nogal. All rights reserved.
//

import XCTest
@testable import ApplePie

class GameTests: XCTestCase {
    var game: Game!

    override func setUp() {
        super.setUp()
        game = Game(words: ["Test", "anotherTest"])
    }
    
    override func tearDown() {
        game = nil
        super.tearDown()
    }

    func test_shouldStartRoundWithRemainingAttemptsEqualToTotalAttempts() {
        game.startNewRound()

        XCTAssertEqual(game.remainingAttempts, 7, "remainingAttempts is not 7")
    }

    func test_shouldUpdateStateToWinWhenPlayerWins() {
        game.startNewRound()
        game.playerGuessed("t")
        game.playerGuessed("s")
        game.playerGuessed("e")

        XCTAssertEqual(game.isRoundFinished, true)
    }

    func test_shouldAddOneToWinsWhenPlayerWins() {
        game.startNewRound()
        game.playerGuessed("t")
        game.playerGuessed("s")
        game.playerGuessed("e")

        XCTAssertEqual(game.totalWins, 1)
    }

    func test_shouldUpdateStateToLostWhenPlayerLosses() {
        game.startNewRound()
        game.playerGuessed("a")
        game.playerGuessed("b")
        game.playerGuessed("c")
        game.playerGuessed("d")
        game.playerGuessed("f")
        game.playerGuessed("g")
        game.playerGuessed("h")

        XCTAssertEqual(game.isRoundFinished, true)
    }

    func test_shouldAddOneToLoosesWhenPlayerLosses() {
        game.startNewRound()
        game.playerGuessed("a")
        game.playerGuessed("b")
        game.playerGuessed("c")
        game.playerGuessed("d")
        game.playerGuessed("f")
        game.playerGuessed("g")
        game.playerGuessed("h")

        XCTAssertEqual(game.totalLosses, 1)
    }
}
