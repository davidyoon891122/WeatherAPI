//
//  Weather.swift
//  WeatherAPI
//
//  Created by David Yoon on 2021/08/01.
//

import Foundation

struct Weather: Codable, Identifiable {
    var weather: [WeatherDetail]
    
    enum CodingKey: String {
        case weather
    }
    
    init() {
        weather = []
    }
}

extension Weather {
    var id: UUID {
        return UUID()
    }
}


