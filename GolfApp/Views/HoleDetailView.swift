//
//  HoleDetailView.swift
//  GolfApp
//
//  Created by Christopher G. on 5/11/25.
//

import SwiftUI


#Preview {
    HoleDetailView(hole: SampleData.pinehurstNo1.holes[0])
}

struct HoleDetailView: View {
    let hole: Hole

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Hole \(hole.number)")
                .font(.largeTitle)
                .bold()
            Text("Par: \(hole.par)")
            Text("Handicap: \(hole.handicap)")
            
            VStack(alignment: .leading) {
                Text("Distances:")
                    .font(.headline)
                ForEach(TeeColor.allCases, id: \.self) { tee in
                    if let distance = hole.distances[tee] {
                        Text("\(tee.rawValue.capitalized): \(distance) yds")
                    }
                }
            }
            Spacer()
        }
        .padding()
        .navigationTitle("Hole Overview")
    }
}
