//
//  HoleListView.swift
//  GolfApp
//
//  Created by Christopher G. on 5/11/25.
//

import SwiftUI


struct HoleListView: View {
    let course: Course

    var body: some View {
        List(course.holes) { hole in
            NavigationLink(destination: HoleDetailView(hole: hole)) {
                Text("Hole \(hole.number) – Par \(hole.par)")
            }
        }
        .navigationTitle(course.name)
    }
}
