//
//  WeatherWidget.swift
//  AdvancedWeatherSwiftUI
//
//  Created by Deniz Ata Eş on 3.04.2023.
//

import SwiftUI

struct WeatherWidget: View {
    var forecast: Forecast
    var body: some View {
        ZStack(alignment: .bottom){
            Trapezoid()
                .fill(Color.weatherWidgetBackground)
                .frame(width: 342, height: 174)
            
            // MARK: Content
            HStack(alignment: .bottom){
                VStack(alignment: .leading, spacing: 8) {
                    Text("\(forecast.temperature)°")
                        .font(.system(size: 64))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        // MARK: Forecast Temperature Range
                        Text("H:\(forecast.high)° L:\(forecast.low)°")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        
                        // MARK: Forecast location
                        Text(forecast.location)
                            .font(.body)
                            .lineLimit(1)
                    }
                }
                
                Spacer()
                
                VStack(alignment: .trailing, spacing: 0){
                    Image("\(forecast.icon) large")
                        .padding(.trailing, 4)
                    
                    // MARK: Weather
                    Text(forecast.weather.rawValue)
                        .font(.footnote)
                        .padding(.trailing, 24)
                }
            }
                .foregroundColor(.white)
                .padding(.bottom, 20)
                .padding(.leading, 20)
        }
        .frame(width: 342, height: 184, alignment: .bottom)
    }
}

struct WeatherWidget_Previews: PreviewProvider {
    static var previews: some View {
        WeatherWidget(forecast: Forecast.cities[0])
            .preferredColorScheme(.dark)
    }
}
