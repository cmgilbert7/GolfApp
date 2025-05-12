//
//  CourseListView.swift
//  GolfApp
//
//  Created by Christopher G. on 5/11/25.
//

import SwiftUI

struct CourseListView: View {
    let user: User

    var body: some View {
        NavigationView {
            VStack( spacing: 20) {
                List(SampleData.courses) { course in
                    NavigationLink {
                        StartRoundView(course: course, user: user) { finalScorecard in
                            print("Round finished with scores: \(finalScorecard.scores)")
                        }
                    } label: {
                        Text(course.name)
                    }
                }
                .navigationTitle("Choose Course")
                
                NavigationLink(destination: LoadCourseView()) {
                    Text("Load Course")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .padding()
                }
                Divider()
                NavigationLink(destination: AddCourseView()) {
                    Text("Add Course")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .padding()
                }
            }

        }

    }
}
