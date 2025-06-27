//
//  ContentView.swift
//  Landmarks
//
//  Created by Markus Lehtonen on 27.6.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        
                    Spacer()
                    Text("California")
                    
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descreptive text goes here")
            }
            
            .padding()
            
            Spacer()
            
            
           
        }
        .background(MeshGradient(width: 3, height: 3, points: [
                        [0.0, 0.0], [0.5, 0.0], [1.0, 0.0],
                        [0.0, 0.5], [0.5, 0.5], [1.0, 0.5],
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
    ContentView()
}
