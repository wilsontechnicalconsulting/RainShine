//
//  WeatherVC.swift
//  RainShine
//
//  Created by Eric Wilson on 8/19/16.
//  Copyright © 2016 Eric Wilson. All rights reserved.
//

import UIKit
import Alamofire

class WeatherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var dateLBL: UILabel!
    @IBOutlet weak var currentTempLBL: UILabel!
    @IBOutlet weak var locationLBL: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var currentWeatherCondition: UILabel!
    @IBOutlet weak var tableView: UITableView!

    var currentWeather = CurrentWeather()
    var forecast: Forecast!
    var forecasts = [Forecast]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(CURRENT_WEATHER_URL)
        print(CURRENT_FORECAST_WEATHER_URL)
        
        
    //Adds the data and the delegate to the cells int the tableview
        
        tableView.delegate = self
        tableView.dataSource = self
        
        currentWeather = CurrentWeather()
    
        currentWeather.downloadWeatherDetails {
            self.downloadForecastData {
            self.updateMainUI()
            }
        }
    }

    //Following functions required for delegate, UITableview
    //Standard requirement
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forecasts.count
    }
//Configure Table view to accept data from WeatherCell Class
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath) as? WeatherCell {
            let forecast = forecasts[indexPath.row]
            cell.conffigureCell(forecast: forecast)
            return cell
        } else {
            return WeatherCell()
    }
    
}
    
    func updateMainUI () {
        dateLBL.text = currentWeather.date
        currentTempLBL.text = "\(currentWeather.currentTemp)"
        currentWeatherCondition.text = currentWeather.weatherType
        locationLBL.text = currentWeather.cityName
        weatherImage.image = UIImage(named: currentWeather.weatherType)
  
        
    }
    
    func downloadForecastData (completed: DownloadComplete) {
        let forecastWeatherURL = URL(string: CURRENT_FORECAST_WEATHER_URL)!
        Alamofire.request(forecastWeatherURL, withMethod: .get) .responseJSON { response in
            let result = response.result //Get the result and ...
            if let dict = result.value as? Dictionary<String, AnyObject> { //Push result into a dictionary
                if let list = dict["list"] as? [Dictionary<String, AnyObject>] {
                    for obj in list {
                        let forecast = Forecast(weatherDict: obj)
                        self.forecasts.append(forecast)
                        print(obj)
                        print(CURRENT_FORECAST_WEATHER_URL)
                                }
                            self.tableView.reloadData()
                                    
                            }
                                    
                        }
            
                        completed()
                    }
         
                }
        


           
           
            

        }

