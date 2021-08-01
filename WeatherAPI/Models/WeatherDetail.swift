//
//  WeatherDetail.swift
//  WeatherAPI
//
//  Created by David Yoon on 2021/08/01.
//

import Foundation

struct WeatherDetail: Codable {
    var main: String
    var description: String
    var icon: String
}
