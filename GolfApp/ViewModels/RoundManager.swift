//
//  RoundManager.swift
//  GolfApp
//
//  Created by Christopher G. on 5/12/25.
//

import Foundation

class RoundManager {
    
    static let shared = RoundManager()
    
    private var currentCourse: Course?
    private var currentRound: Round?

    private var scorecard: ScoreCard?
    private var currentHoleIndex: Int = 0 // 0-indexing is off by one when referencing hole numbers
    
    private init() {
    }
    
    func startNewRound(course: Course, player: User, tees: TeeColor) -> Bool {
        
        currentCourse = course;
            scorecard = ScoreCard(
                id: UUID(),
                user: player,
                tees: tees,
                scores: []
            )
        return saveRoundState()
    }
    
    func endRound() -> ScoreCard? {
        guard let round = currentRound, let course = currentCourse else {
            return nil
        }
        var updatedRound = round
        updatedRound.completed = true
        currentRound = updatedRound
        let scorecard = round.toScorecard( course: course )
        if !saveRoundState() || !resetRoundData() {
            return nil
        }
        return scorecard
    }
    
    func saveRoundState() -> Bool {
        print("Saving round state...")
        return true
    }
    
    func resetRoundData() -> Bool {
        currentCourse = nil
        currentRound = nil
        scorecard = nil
        currentHoleIndex = 0
        print("Round data reset.")
        return true
    }
}
