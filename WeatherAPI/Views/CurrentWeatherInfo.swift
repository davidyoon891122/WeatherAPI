//
//  CurrentWeatherInfo.swift
//  WeatherAPI
//
//  Created by David Yoon on 2021/08/01.
//

import UIKit

class CurrentWeatherInfo: UIView {
    
    let locationNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Seoul"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let weatherMainLabel: UILabel = {
        let label = UILabel()
        label.text = "Rain"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let weatherDescriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "light rain"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(locationNameLabel)
        self.addSubview(weatherMainLabel)
        self.addSubview(weatherDescriptionLabel)
        
        locationNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        locationNameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        locationNameLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        
        weatherMainLabel.topAnchor.constraint(equalTo: locationNameLabel.bottomAnchor, constant: 5).isActive = true
        weatherMainLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        weatherMainLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        
        weatherDescriptionLabel.topAnchor.constraint(equalTo: weatherMainLabel.bottomAnchor, constant: 5).isActive = true
        weatherDescriptionLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        weatherDescriptionLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        
        
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
