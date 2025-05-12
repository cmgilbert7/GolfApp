//
//  AddCourseView.swift
//  GolfApp
//
//  Created by Christopher G. on 5/12/25.
//

import SwiftUI

struct AddCourseView: View {
    @State private var name: String = ""
    @State private var location: String = ""
    @State private var rating: String = ""
    @State private var par: String = ""
    @State private var distance: String = ""

    var body: some View {
        Form {
            Section(header: Text("Course Info")) {
                TextField("Course Name", text: $name)
                TextField("Location", text: $location)
                TextField("Rating (e.g. 72.5)", text: $rating)
                    .keyboardType(.decimalPad)
                TextField("Par", text: $par)
                    .keyboardType(.numberPad)
                TextField("Total Distance (yards)", text: $distance)
                    .keyboardType(.numberPad)
            }

            Section {
                NavigationLink(
                    destination: {
                        let newCourse = Course(
                            id: UUID(),
                            name: name,
                            par: Int(par) ?? 0,
                            holes: []
                        )
                        AddHoleView(course: newCourse)
                    }
                ) {
                    Text("Next")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .padding()
                }
            }
            .disabled(name.isEmpty || location.isEmpty || rating.isEmpty || par.isEmpty || distance.isEmpty)
        }
        .navigationTitle("Add New Course")
    }
}
