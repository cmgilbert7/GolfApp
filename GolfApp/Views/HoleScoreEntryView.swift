//
//  HoleScoreEntryView.swift
//  GolfApp
//
//  Created by Christopher G. on 5/11/25.
//

import SwiftUI

struct HoleScoreEntryView: View {
    let course: Course
    let holeNumber: Int
    let currentScore: Int?
    var onSave: (Int) -> Void

    @State private var strokes: Int = 0

    var body: some View {
        VStack(spacing: 16) {
            Text("Enter Score for Hole \(holeNumber)")
                .font(.title2)
                .bold()

            Stepper("Strokes: \(strokes)", value: $strokes, in: 1...12)
                .padding()

            Button("Save Score") {
                onSave(strokes)
            }
            .buttonStyle(.borderedProminent)
        }
        .onAppear {
            strokes = currentScore ?? course.holes[holeNumber - 1].par
        }
    }
}
