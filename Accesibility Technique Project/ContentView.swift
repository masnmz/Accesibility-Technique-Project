//
//  ContentView.swift
//  Accesibility Technique Project
//
//  Created by Mehmet Alp Sönmez on 01/07/2024.
//

import SwiftUI

struct ContentView: View {
    let pictures = [
        "ales-krivec-15949",
        "galina-n-189483",
        "kevin-horstmann-141705",
        "nicolas-tissot-335096"
    ]
    
    let labels = [
        "Tulips",
        "Frozen tree bunds",
        "Sunflowers",
        "Fireworks"
    ]
    
    @State private var selectedPictures = Int.random(in: 0...3)
    
    var body: some View {
        Button {
            selectedPictures = Int.random(in: 0...3)
        } label: {
            Image(pictures[selectedPictures])
                .resizable()
                .scaledToFit()
        }
        .accessibilityAddTraits(.isButton)
    }
}

#Preview {
    ContentView()
}
