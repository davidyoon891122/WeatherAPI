//
//  CurrentWeather.swift
//  WeatherAPI
//
//  Created by David Yoon on 2021/08/01.
//

import Foundation


class Weather{
    let coord: Coord
    
    init(coord: Coord) {
        self.coord = coord
    }
}





struct Coord {
    let lon: Double
    let lat: Double
}
