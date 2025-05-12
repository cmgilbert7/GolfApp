//
//  StartRoundView.swift
//  GolfApp
//
//  Created by Christopher G. on 5/11/25.
//


import SwiftUI

struct StartRoundView: View {
    let course: Course
    let user: User
    let onEnd: (ScoreCard) -> Void
    @State private var selectedTee: TeeColor = .white

    var body: some View {
        VStack(spacing: 20) {
            Text("Select Tees")
                .font(.headline)

            Picker("Tee Color", selection: $selectedTee) {
                ForEach(TeeColor.allCases.reversed(), id: \.self) { tee in
                    Text(tee.rawValue.capitalized).tag(tee)
                }
            }
            .pickerStyle(.segmented)

            NavigationLink(
                destination: {
                    let scorecard = ScoreCard(
                        id: UUID(),
                        user: user,
                        tees: selectedTee,
                        scores: Array(repeating: nil, count: course.holes.count)
                    )
                    HoleRoundView(course: course, scorecard: .constant(scorecard), onEnd: onEnd)
                }
            ) {
                Text("Start Round")
                    .font(.title2)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            Spacer()
                .frame(height: 500)
        }
        .padding()
        .navigationTitle("New Round")
    }
}


