//
//  API+Extenstions.swift
//  WeatherAPI
//
//  Created by David Yoon on 2021/08/01.
//

import Foundation

extension API {
    static let baseURLString = "https://api.openweathermap.org/data/2.5/"
    
    static func getURLFor(lat: Double, lon: Double) -> String {
        return "\(baseURLString)oncall?lat=\(lat)&lon=\(lon)&exclude=minutely&appid=\(key)&units=imperial"
    }
    
    //api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
    static func getURLForCity(city: String) -> String {
        return "\(baseURLString)weather?q=\(city)&appid=\(key)"
    }
    
    
}
