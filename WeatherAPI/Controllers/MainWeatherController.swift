//
//  WeatherController.swift
//  WeatherAPI
//
//  Created by David Yoon on 2021/08/01.
//

import UIKit

class MainWeatherController: UIViewController {
    override func viewDidLoad() {
        super .viewDidLoad()
        
        let currentWeatherInfo = CurrentWeatherInfo()
        let weatherTable = WeatherTable()
        view.backgroundColor = .white
        view.addSubview(currentWeatherInfo)
        view.addSubview(weatherTable)
        
        currentWeatherInfo.translatesAutoresizingMaskIntoConstraints = false
        currentWeatherInfo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5).isActive = true
        currentWeatherInfo.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
        currentWeatherInfo.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true
        currentWeatherInfo.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        weatherTable.translatesAutoresizingMaskIntoConstraints = false
        weatherTable.topAnchor.constraint(equalTo: currentWeatherInfo.bottomAnchor, constant: 10).isActive = true
        weatherTable.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
        weatherTable.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true
        weatherTable.heightAnchor.constraint(equalToConstant: 500).isActive = true
        
    }
}
