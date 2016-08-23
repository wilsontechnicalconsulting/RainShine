//
//  WeatherVC.swift
//  RainShine
//
//  Created by Eric Wilson on 8/19/16.
//  Copyright © 2016 Eric Wilson. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var dateLBL: UILabel!
    @IBOutlet weak var currentTempLBL: UILabel!
    @IBOutlet weak var locationLBL: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var currentWeatherCondition: UILabel!
    @IBOutlet weak var tableView: UITableView!

    var currentWeather = CurrentWeather()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(CURRENT_WEATHER_URL)
        
        
    //Adds the data and the delegate to the cells int the tableview
        tableView.delegate = self
        tableView.dataSource = self
        
      currentWeather.downloadWeatherDetails {
            //Build UI
        }
        
    }

    //Following functions required for delegate, UITableview
    //Standard requirement
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath)
        
        return cell
        }
       
        

    }

