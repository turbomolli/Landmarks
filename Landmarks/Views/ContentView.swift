//
//  ContentView.swift
//  Landmarks
//
//  Created by Markus Lehtonen on 27.6.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
