//
//  ScoreCardView.swift
//  GolfApp
//
//  Created by Christopher G. on 5/11/25.
//

import SwiftUI

//#Preview {
//    let mockUser = User(id: UUID(), firstName: "Test", lastName: "User", handicap: 10.2)
//
//    let mockCourse = Course(
//        id: UUID(),
//        name: "Preview Pines",
//        par: 36,
//        holes: (1...9).map { i in
//            Hole(
//                id: UUID(),
//                number: i,
//                par: 4,
//                distances: [.blue: 400, .white: 380, .red: 350],
//                handicap: i,
//                centerGreenLocation: Coordinate(latitude: 35.0, longitude: -79.0),
//                overviewImageName: "placeholder"
//            )
//        }
//    )
//
//    let mockScorecard = ScoreCard(
//        id: UUID(),
//        user: mockUser,
//        tees: .white,
//        scores: [4, 5, nil, 3, nil, 4, 4, nil, 5]
//    )
//
//    ScorecardView(scorecard: mockScorecard,
//                  course: mockCourse,
//                  onEnd: { _ in }
//    )
//}

struct ScorecardView: View {
    let scorecard: ScoreCard
    let course: Course
    var onEnd: (ScoreCard) -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Scorecard")
                .font(.largeTitle)
                .bold()

            List {
                ForEach(0..<scorecard.scores.count, id: \.self) { i in
                    HStack {
                        Text("Hole \(i + 1) : Par \(course.holes[i].par)")
                        Spacer()
                        if let score = scorecard.scores[i] {
                            Text("\(score)")
                        } else {
                            Text("–")
                                .foregroundColor(.secondary)
                        }
                    }
                }

                if totalScore > 0 {
                    HStack {
                        Text("Total")
                            .fontWeight(.bold)
                        Spacer()
                        Text("\(totalScore)")
                            .fontWeight(.bold)
                    }
                }
            }
            Button("End Round") {
                onEnd(scorecard)
            }
        }
        .padding()
    }

    private var totalScore: Int {
        scorecard.scores.compactMap { $0 }.reduce(0, +)
    }
}
