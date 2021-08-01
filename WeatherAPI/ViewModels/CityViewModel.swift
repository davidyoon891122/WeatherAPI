//
//  CityViewModel.swift
//  WeatherAPI
//
//  Created by David Yoon on 2021/08/01.
//

import Foundation
import CoreLocation
import UIKit

final class CityViewModel: ObservableObject {
    @Published var weather = CurrentWeatherResponse.empty()
    @Published var city: String = "Seoul" {
        didSet {
            getLocation()
        }
    }
    
    private lazy var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter
    }()
    
    private lazy var dayFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE"
        return formatter
    }()
    
    private lazy var timeFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh a"
        return formatter
    }()
    
    init() {
        getLocation()
    }
    
    var weatherIcon: String {
        if weather.current.weather.count > 0 {
            return weather.current.weather[0].icon
        }
        return "sun.max.fill"
    }
    
    var conditions: String {
        if weather.current.weather.count > 0 {
            return weather.current.weather[0].main
        }
        return ""
    }
    
    func getTimeFor(timestamp: Int) -> String {
        return timeFormatter.string(from: Date(timeIntervalSince1970: TimeInterval(timestamp)))
    }
    
    
    private func getLocation(){
        CLGeocoder().geocodeAddressString(city){(placemarks, error) in
            if let places = placemarks, let place = places.first {
                self.getWeather(coord: place.location?.coordinate)
            }
        }
    }
    
    private func getWeather(coord: CLLocationCoordinate2D?) {
        if let coord = coord {
            let urlString = API.getURLFor(lat: coord.latitude, lon: coord.longitude)
            getWeatherInternal(city: "Seoul", for: urlString)
        } else {
            let urlString = API.getURLFor(lat: 37.5485, lon: -121.98)
            getWeatherInternal(city: "Seoul", for: urlString)
        }
    }
    
    
    private func getWeatherInternal(city: String, for urlString: String) {
        NetworkManager<CurrentWeatherResponse>.fetch(for: URL(string: urlString)!) { (result) in
            switch result {
            case .success(let response):
                DispatchQueue.main.sync {
                    self.weather = response
                }
            case .failure(let err):
                print(err)
            }
        }
    }
    
    
    func getLottieAnimationFor(icon: String) -> String {
        switch icon {
        case "01d":
            return "dayClearSky"
        default:
            return "dayRain"
        }
    }
    
    
    func getWeatherIconFor(icon: String) -> UIImage {
        switch icon {
        case "01d":
            return UIImage(named: "applelogo")!
        default:
            return UIImage(named: "applelogo")!
        }
    }
    
    
    
}
