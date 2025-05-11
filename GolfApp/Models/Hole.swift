//
//  Hole.swift
//  GolfApp
//
//  Created by Christopher G. on 5/10/25.
//

import Foundation
import CoreLocation
import SwiftUI

enum TeeColor: String, Codable, CaseIterable {
    case gold
    case blue
    case white
    case green
    case red
    case yellow
}

struct Coordinate: Codable, Equatable {
    let latitude: Double
    let longitude: Double
    func locationCoordinate() -> CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: self.latitude, longitude: self.longitude)
    }
}


struct Hole: Equatable, Codable, Identifiable {
    var id: UUID
    let number: Int
    let par: Int
    let distances: [TeeColor: Int]
    let handicap: Int
    let centerGreenLocation: Coordinate
    
    init(id: UUID, number: Int, par: Int, distances: [TeeColor : Int], handicap: Int, centerGreenLocation: Coordinate) {
        self.id = id
        self.number = number
        self.par = par
        self.distances = distances
        self.handicap = handicap
        self.centerGreenLocation = centerGreenLocation
    }
}
