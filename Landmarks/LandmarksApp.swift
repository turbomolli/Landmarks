//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Markus Lehtonen on 27.6.2025.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
