//
//  WeatherCell.swift
//  RainShine
//
//  Created by Eric Wilson on 8/23/16.
//  Copyright © 2016 Eric Wilson. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLBL: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!
    
    

    func conffigureCell (forecast: Forecast) {
        lowTemp.text = "\(forecast.lowTemp)" //Change Double to String
        highTemp.text = "\(forecast.highTemp)" //Change Double to String
        weatherType.text = forecast.weatherType
        dayLBL.text = forecast.date
        weatherIcon.image = UIImage(named: forecast.weatherType)
        
    }
    
}
