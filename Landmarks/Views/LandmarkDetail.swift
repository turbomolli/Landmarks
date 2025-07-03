//
//  ContentView.swift
//  Landmarks
//
//  Created by Markus Lehtonen on 27.6.2025.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        
                    Spacer()
                    Text(landmark.state)
                    
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            
            .padding()
            
           
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        .background(MeshGradient(width: 3, height: 3, points: [
                        [0.0, 0.0], [0.5, 0.0], [1.0, 0.0],
                        [0.0, 0.5], [0.5, 0.5], [1.0, 0.3],
                        [0.0, 1.0], [0.5, 1.0], [1.0, 1.0]
                    ], colors: [
                        .red, .white, .indigo,
                        .orange, .teal, .blue,
                        .yellow, .green, .mint
                    ],
                                 
                        smoothsColors: true,
                        colorSpace: .perceptual
                    )
        )
        .ignoresSafeArea()
            
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
