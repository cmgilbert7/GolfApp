//
//  Round.swift
//  GolfApp
//
//  Created by Christopher G. on 5/12/25.
//

import Foundation

struct Round {
    let id: UUID
    let courseId: UUID
    let user: User
    var scores: [Int]
    var completed: Bool
    var currentHoleIndex: Int
    
    var teeSelection: TeeColor?
        
    init(id: UUID = UUID(),
         courseId: UUID,
         user: User,
         scores: [Int] = [0],
         completed: Bool = false,
         currentHoleIndex: Int = 1,
         teeSelection: TeeColor
    ){
        
        self.id = id
        self.courseId = courseId
        self.user = user
        self.scores = scores
        self.completed = completed
        self.currentHoleIndex = currentHoleIndex
        self.teeSelection = teeSelection
    }
        
    var totalScore: Int {
        var sum = 0
        for score in scores {
            sum += score
        }
        return sum
    }
    
    var completedHoleCount: Int {
        var count = 0
        for score in scores {
            if score != 0 {
                count += 1
            }
        }
        return count
    }
        
    
    func scoreToPar(course: Course) -> Int? {
        return totalScore - course.par
    }
    
    func isHoleScored(_ holeNumber: Int) -> Bool {
        return scores[holeNumber] != 0
    }
    
    func withScore(for holeNumber: Int, score: Int) -> Round {
        var updatedScores = scores
        updatedScores[holeNumber] = score
        
        var updated = self
        updated.scores = updatedScores
        return updated
    }
    
    func completed(on date: Date = Date()) -> Round {
        var completed = self
        completed.completed = true
        return completed
    }
    
    func movingTo(holeNumber: Int) -> Round {
        var updated = self
        updated.currentHoleIndex = holeNumber
        return updated
    }
    
    
    func toScorecard(course: Course) -> ScoreCard {
        return ScoreCard(
            id: UUID(),
            user: user,
            tees: teeSelection ?? .white,
            scores: scores,
        )
    }
}


extension Round: Equatable {
    static func == (lhs: Round, rhs: Round) -> Bool {
        return lhs.id == rhs.id
    }
}
