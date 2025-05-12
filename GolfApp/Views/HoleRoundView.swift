//
//  HoleRoundView.swift
//  GolfApp
//
//  Created by Christopher G. on 5/11/25.
//



import SwiftUI

struct HoleRoundView: View {
    let course: Course
    @Binding var scorecard: ScoreCard
    let onEnd: (ScoreCard) -> Void
    @State private var currentHoleIndex: Int = 0
    @State private var showingOverview: Bool = true

    var body: some View {
        let hole = course.holes[currentHoleIndex]

        VStack(spacing: 16) {
            if showingOverview {
                HoleOverviewView(hole: hole, selectedTee: scorecard.tees)
            } else {
                HoleScoreEntryView(
                    course: course,
                    holeNumber: hole.number,
                    currentScore: scorecard.scores[currentHoleIndex],
                    onSave: { strokes in
                        scorecard.scores[currentHoleIndex] = strokes
                        showingOverview = true
                    }
                )
            }

            HStack {
                if currentHoleIndex > 0 {
                    Button("← Prev Hole") {
                        currentHoleIndex -= 1
                        showingOverview = true
                    }
                }

                Spacer()

                Button(showingOverview ? "Enter Score" : "Overview") {
                    showingOverview.toggle()
                }

                Spacer()

                if currentHoleIndex < course.holes.count - 1 {
                    Button("Next Hole →") {
                        currentHoleIndex += 1
                        showingOverview = true
                    }
                }
            }
            .padding(.top)
        }
        .padding()
        .navigationTitle("Hole \(hole.number)")
        .toolbar {
            NavigationLink("Scorecard") {
                ScorecardView(scorecard: scorecard, course: course, onEnd: onEnd)
            }
        }
    }
}

