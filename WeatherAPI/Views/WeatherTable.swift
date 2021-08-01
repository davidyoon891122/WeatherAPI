//
//  WeatherTable.swift
//  WeatherAPI
//
//  Created by David Yoon on 2021/08/01.
//

import UIKit

class WeatherTable: UIView, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath)
        cell.imageView?.image = UIImage(named: "applelogo")
        return cell
    }
    
    
    
    lazy var weatherTableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    let testLabel: UILabel = {
        let label = UILabel()
        label.text = "Test"
        label.textColor = .blue
        label.textAlignment = .center
        return label
    } ()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(weatherTableView)
        addSubview(testLabel)
        //backgroundColor = .yellow
        
        weatherTableView.translatesAutoresizingMaskIntoConstraints = false
        testLabel.translatesAutoresizingMaskIntoConstraints = false
        
        testLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        testLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        testLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 16).isActive = true
        testLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        weatherTableView.topAnchor.constraint(equalTo: self.testLabel.bottomAnchor, constant: 8).isActive = true
        weatherTableView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        weatherTableView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16).isActive = true
        weatherTableView.heightAnchor.constraint(equalToConstant: 500).isActive = true
        
        weatherTableView.register(WeatherCell.self, forCellReuseIdentifier: "weatherCell")
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
