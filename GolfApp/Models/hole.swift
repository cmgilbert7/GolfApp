//
//  hole.swift
//  GolfApp
//
//  Created by Christopher G. on 5/10/25.
//

import Foundation
import SwiftUI

enum TeeColor: String, Codable, CaseIterable, Hashable {
    case gold
    case blue
    case white
    case green
    case red
}


struct Hole: Equatable, Hashable, Codable, Identifiable {
    var id: UUID
    let number: Int
    let par: Int
    let distances: [TeeColor: Int]
    
    init(id: UUID, number: Int, par: Int, distances: [TeeColor : Int]) {
        self.id = id
        self.number = number
        self.par = par
        self.distances = distances
    }
}

