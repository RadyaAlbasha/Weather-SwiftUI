//
//  ContentView.swift
//  Weather-SwiftUI
//
//  Created by Radya Albasha on 02/06/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight: Bool = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            
            VStack{
                CityTextView(cityName: "Cupretino, CA")
                
               MainWeatherStatusView(imageName:  isNight ? "moon.stars.fill" : "cloud.sun.fill", temprature: 76)
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temprature: 74)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temprature: 88)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "wind.snow",
                                   temprature: 55)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "sunset.fill",
                                   temprature: 60)
                    WeatherDayView(dayOfWeek: "SAT ",
                                   imageName: "snowflake",
                                   temprature: 25)
                    
                }
                
                Spacer()
                
                Button{//action
                    isNight.toggle()
                }label: {
                    WeatherButton(title: "Change Day Time", TextColor: isNight ? .black : .blue, backgroundColor: .yellow)
                }
                Spacer()
            }
        }
             
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek:  String
    var imageName: String
    var temprature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(.white)
            Image(systemName:  imageName)
//                .symbolRenderingMode(.palette)
                .symbolRenderingMode(.multicolor)
                .resizable()
//                .foregroundStyle(.pink, .orange, .green)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temprature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView: View {
    //use binding if you will change the value in the subview, if you will just read the value then you don't need to use binding
//    @Binding var isNight: Bool
    var isNight: Bool
    var body: some View {
        //more customized gradient
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,  isNight ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
        //New gradient modiire
//        ContainerRelativeShape()
//            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
//            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temprature: Int
    
    var body: some View {
        VStack(spacing: 10){
          Image(systemName:  imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temprature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
         .padding(.bottom, 40)
    }
}

