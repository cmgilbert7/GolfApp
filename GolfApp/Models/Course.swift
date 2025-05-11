//
//  course.swift
//  GolfApp
//
//  Created by Christopher G. on 5/10/25.
//

import SwiftUI
import Foundation
import CoreLocation

struct Course: Equatable, Codable, Identifiable {
    let id: UUID
    let name: String
    let par: Int
    let holes: [Hole]
    
    init(id: UUID, name: String, par: Int, holes: [Hole]) {
        self.id = id
        self.name = name
        self.par = par
        self.holes = holes
    }
}
