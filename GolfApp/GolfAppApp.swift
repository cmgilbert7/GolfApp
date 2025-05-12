//
//  GolfAppApp.swift
//  GolfApp
//
//  Created by Christopher G. on 5/9/25.
//

import SwiftUI

@main
struct GolfAppApp: App {
    @StateObject var locationManager = LocationManager()
    
    let admin = User(
            id: UUID(),
            firstName: "Chris",
            lastName: "Gilbert",
            handicap: 15
        )

    var body: some Scene {
        WindowGroup {
            CourseListView(user: admin)
                .environmentObject(locationManager)
        }
    }
}
