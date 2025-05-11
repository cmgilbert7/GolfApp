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

    var body: some Scene {
        WindowGroup {
            CourseListView()
                .environmentObject(locationManager)
        }
    }
}
