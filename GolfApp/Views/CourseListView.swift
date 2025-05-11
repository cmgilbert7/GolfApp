//
//  CourseListView.swift
//  GolfApp
//
//  Created by Christopher G. on 5/11/25.
//

import Foundation
import SwiftUI


struct CourseListView: View {
    @State var courses: [Course] = [SampleData.pinehurstNo1]
    @State var selectedCourse: Course? = nil

    var body: some View {
        NavigationView {
            List(courses) { course in
                NavigationLink(destination: HoleListView(course: course)) {
                    Text(course.name)
                }
            }
            .navigationTitle("Choose Course")
        }
    }
}
