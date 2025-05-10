//
//  user.swift
//  GolfApp
//
//  Created by Christopher G. on 5/10/25.
//

import SwiftUI
import Foundation
import CoreLocation

struct User: Equatable, Hashable, Codable, Identifiable {
    let id: UUID
    let firstName: String
    let lastName: String
//    let pastScores: [Int: Int]  Maybe set a way for past scores, slope rating and pars to be tracked for future handicap ratings
    var handicap: Double
    
    init(id: UUID, firstName: String, lastName: String, handicap: Double) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.handicap = handicap
    }
    
    mutating func setHandicap(newHandicap: Double) {
        self.handicap = newHandicap
    }
    
    mutating func calculateHandicap() {
//        self.handicap = math to calculate handicap from prev scores
    }
}
