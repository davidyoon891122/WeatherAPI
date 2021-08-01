//
//  WeatherController.swift
//  WeatherAPI
//
//  Created by David Yoon on 2021/08/01.
//

import UIKit

class WeatherController: UIViewController {
    override func viewDidLoad() {
        super .viewDidLoad()
        
        let weatherTable = WeatherTable()
        view.backgroundColor = .white
        view.addSubview(weatherTable)
        
        weatherTable.translatesAutoresizingMaskIntoConstraints = false
        weatherTable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        weatherTable.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
        weatherTable.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true
        
        
    }
}
