//
//  HoleOverviewView.swift
//  GolfApp
//
//  Created by Christopher G. on 5/11/25.
//

import SwiftUI
import CoreLocation

struct HoleOverviewView: View {
    let hole: Hole
    let selectedTee: TeeColor
    @EnvironmentObject var locationManager: LocationManager

    var body: some View {
        VStack(spacing: 12) {
            if let distance = hole.distances[selectedTee] {
                Text("Distance from \(selectedTee.rawValue.capitalized): \(distance) yds")
            }

            if let userLocation = locationManager.userLocation {
                let greenLocation = CLLocation(latitude: hole.centerGreenLocation.latitude, longitude: hole.centerGreenLocation.longitude)
                let userCL = CLLocation(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
                let gpsDistance = Int(userCL.distance(from: greenLocation))
                Text("GPS Distance to Green: \(gpsDistance) meters")
            } else {
                Text("Locating...")
            }

            Image(hole.overviewImageName)
                .resizable()
                .scaledToFit()
                .frame(maxHeight: 300)
                .cornerRadius(12)
        }
    }
}
