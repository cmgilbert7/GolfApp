//
//  PinehurstCourses.swift
//  GolfApp
//
//  Created by Christopher G. on 5/11/25.
//

import Foundation

struct SampleData {
    static let pinehurstNo1: Course = Course(
        id: UUID(),
        name: "Pinehurst No. 1",
        par: 70,
        holes: [
            Hole(id: UUID(), number: 1, par: 4, distances: [.blue: 391, .white: 365, .green: 365, .red: 319, .yellow: 237], handicap: 3, centerGreenLocation: Coordinate(latitude: 35.1891, longitude: -79.4695)),
            Hole(id: UUID(), number: 2, par: 4, distances: [.blue: 401, .white: 391, .green: 358, .red: 358, .yellow: 358], handicap: 1, centerGreenLocation: Coordinate(latitude: 35.1898, longitude: -79.4682)),
            Hole(id: UUID(), number: 3, par: 4, distances: [.blue: 353, .white: 345, .green: 345, .red: 331, .yellow: 250], handicap: 7, centerGreenLocation: Coordinate(latitude: 35.1904, longitude: -79.4669)),
            Hole(id: UUID(), number: 4, par: 5, distances: [.blue: 466, .white: 458, .green: 422, .red: 422, .yellow: 340], handicap: 17, centerGreenLocation: Coordinate(latitude: 35.1909, longitude: -79.4656)),
            Hole(id: UUID(), number: 5, par: 3, distances: [.blue: 173, .white: 143, .green: 118, .red: 118, .yellow: 90], handicap: 11, centerGreenLocation: Coordinate(latitude: 35.1915, longitude: -79.4642)),
            Hole(id: UUID(), number: 6, par: 4, distances: [.blue: 375, .white: 355, .green: 355, .red: 281, .yellow: 215], handicap: 5, centerGreenLocation: Coordinate(latitude: 35.1921, longitude: -79.4629)),
            Hole(id: UUID(), number: 7, par: 3, distances: [.blue: 167, .white: 161, .green: 143, .red: 143, .yellow: 104], handicap: 15, centerGreenLocation: Coordinate(latitude: 35.1926, longitude: -79.4614)),
            Hole(id: UUID(), number: 8, par: 4, distances: [.blue: 366, .white: 338, .green: 338, .red: 249, .yellow: 249], handicap: 13, centerGreenLocation: Coordinate(latitude: 35.1933, longitude: -79.4600)),
            Hole(id: UUID(), number: 9, par: 3, distances: [.blue: 148, .white: 126, .green: 126, .red: 109, .yellow: 106], handicap: 9, centerGreenLocation: Coordinate(latitude: 35.1938, longitude: -79.4585)),

            Hole(id: UUID(), number: 10, par: 4, distances: [.blue: 367, .white: 357, .green: 327, .red: 327, .yellow: 242], handicap: 14, centerGreenLocation: Coordinate(latitude: 35.1945, longitude: -79.4572)),
            Hole(id: UUID(), number: 11, par: 4, distances: [.blue: 410, .white: 394, .green: 394, .red: 385, .yellow: 262], handicap: 2, centerGreenLocation: Coordinate(latitude: 35.1951, longitude: -79.4557)),
            Hole(id: UUID(), number: 12, par: 3, distances: [.blue: 222, .white: 218, .green: 157, .red: 136, .yellow: 136], handicap: 10, centerGreenLocation: Coordinate(latitude: 35.1957, longitude: -79.4541)),
            Hole(id: UUID(), number: 13, par: 4, distances: [.blue: 414, .white: 369, .green: 331, .red: 369, .yellow: 331], handicap: 6, centerGreenLocation: Coordinate(latitude: 35.1963, longitude: -79.4526)),
            Hole(id: UUID(), number: 14, par: 4, distances: [.blue: 337, .white: 324, .green: 324, .red: 316, .yellow: 227], handicap: 12, centerGreenLocation: Coordinate(latitude: 35.1969, longitude: -79.4510)),
            Hole(id: UUID(), number: 15, par: 4, distances: [.blue: 352, .white: 345, .green: 324, .red: 324, .yellow: 235], handicap: 8, centerGreenLocation: Coordinate(latitude: 35.1975, longitude: -79.4495)),
            Hole(id: UUID(), number: 16, par: 4, distances: [.blue: 390, .white: 381, .green: 303, .red: 303, .yellow: 227], handicap: 4, centerGreenLocation: Coordinate(latitude: 35.1982, longitude: -79.4481)),
            Hole(id: UUID(), number: 17, par: 4, distances: [.blue: 331, .white: 318, .green: 318, .red: 288, .yellow: 288], handicap: 16, centerGreenLocation: Coordinate(latitude: 35.1987, longitude: -79.4466)),
            Hole(id: UUID(), number: 18, par: 5, distances: [.blue: 426, .white: 418, .green: 418, .red: 389, .yellow: 300], handicap: 18, centerGreenLocation: Coordinate(latitude: 35.1993, longitude: -79.4451))
        ]
    )
}
