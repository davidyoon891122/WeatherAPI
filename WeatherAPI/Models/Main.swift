//
//  MainDetail.swift
//  WeatherAPI
//
//  Created by David Yoon on 2021/08/01.
//

import Foundation

struct Main:Codable,Identifiable {
    let temp: Double
    let feels_like: Double
    let temp_min: Double
    let temp_max: Double
    let pressure: Double
    let humidity: Double
    
    init() {
        temp = 0
        feels_like = 0
        temp_min = 0
        temp_max = 0
        pressure = 0
        humidity = 0
    }
}


extension Main {
    var id: UUID{
        return UUID()
    }
}
