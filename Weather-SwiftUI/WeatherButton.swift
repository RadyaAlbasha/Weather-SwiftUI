//
//  WeatherButton.swift
//  Weather-SwiftUI
//
//  Created by Radya Albasha on 11/06/2025.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var TextColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280 , height: 50)
            .background(backgroundColor.gradient)
            .foregroundStyle(TextColor)
            .font(.system(size: 20, weight: .bold))
            .cornerRadius(10)
    }
}

#Preview {
    WeatherButton(title: "Test Title", TextColor: .white, backgroundColor: .blue)
}
