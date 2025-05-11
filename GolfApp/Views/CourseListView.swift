//
//  CourseListView.swift
//  GolfApp
//
//  Created by Christopher G. on 5/11/25.
//

import SwiftUI

struct CourseListView: View {
    @State var courses: [Course] = [SampleData.pinehurstNo1]
    @State var selectedCourse: Course? = nil
    @State var user: User = User(id: UUID(), firstName: "Test", lastName: "User", handicap: 12.3)

    var body: some View {
        NavigationView {
            List(courses) { course in
                NavigationLink(
                    destination: StartRoundView(course: course, user: user)
                ) {
                    Text(course.name)
                }
            }
            .navigationTitle("Choose Course")
        }
    }
}
