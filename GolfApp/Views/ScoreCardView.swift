//
//  ScoreCardView.swift
//  GolfApp
//
//  Created by Christopher G. on 5/11/25.
//

import SwiftUI

struct ScorecardView: View {
    let scorecard: ScoreCard
    let course: Course

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
        }
        .padding()
    }

    private var totalScore: Int {
        scorecard.scores.compactMap { $0 }.reduce(0, +)
    }
}
