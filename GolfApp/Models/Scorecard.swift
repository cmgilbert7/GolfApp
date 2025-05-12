//
//  scorecard.swift
//  GolfApp
//
//  Created by Christopher G. on 5/10/25.
//

import SwiftUI
import Foundation
import CoreLocation


struct ScoreCard: Equatable, Codable, Identifiable {
    let id: UUID
    let user: User
    let tees: TeeColor
    var scores: [Int?]
    
    init(id: UUID, user: User, tees: TeeColor, scores: [Int?]) {
        self.id = id
        self.user = user
        self.tees = tees
        self.scores = scores
    }
    
    mutating func setScore(score: Int, at index: Int) {
        self.scores[index] = score
    }
}
