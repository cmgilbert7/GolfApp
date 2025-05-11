//
//  StartRoundView.swift
//  GolfApp
//
//  Created by Christopher G. on 5/11/25.
//


import SwiftUI



struct StartRoundView: View {
    @State private var selectedTee: TeeColor = .blue
    let course: Course
    let user: User

    @State private var scorecard: ScoreCard

    init(course: Course, user: User) {
        self.course = course
        self.user = user
        _scorecard = State(initialValue: ScoreCard(
            id: UUID(),
            user: user,
            tees: .blue,
            scores: Array(repeating: nil, count: course.holes.count)
        ))
    }

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
                destination: HoleRoundView(course: course, scorecard: $scorecard)
            ) {
                Text("Start Round")
                    .font(.title2)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
        }
        .padding()
        .navigationTitle("New Round")
    }
}
