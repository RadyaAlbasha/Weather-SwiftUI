//
//  ContentView.swift
//  Weather-SwiftUI
//
//  Created by Radya Albasha on 02/06/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            VStack{
                Text("Cupretino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                Spacer()
            }
        }
            
    }
}

#Preview {
    ContentView()
}
