//
//  WeatherCell.swift
//  WeatherAPI
//
//  Created by David Yoon on 2021/08/01.
//

import UIKit

class WeatherCell: UITableViewCell {
    
    let weatherImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .yellow
        imageView.layer.cornerRadius = 24
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let weatherLabel: UILabel = {
        let label = UILabel()
        label.text = "test"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "weatherCell")
        self.addSubview(weatherLabel)
        self.addSubview(weatherImageView)
        
        weatherImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        weatherImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        weatherImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 10).isActive = true
        weatherImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        //weatherImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        weatherLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        weatherLabel.leftAnchor.constraint(equalTo: weatherImageView.rightAnchor, constant: 15).isActive = true
        //weatherLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 10)
        weatherLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        //weatherLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
