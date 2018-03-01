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

    var formattedWord: String {
        var wordFormatted = ""
        for _ in word {
            wordFormatted += "_"
        }
        return wordFormatted
    }

    mutating func startNewRound() {
        remainingAttempts = MAXIMUM_ATTEMPTS
        word = listOfWords.removeFirst()
    }
}
