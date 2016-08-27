//
//  Constants.swift
//  RainShine
//
//  Created by Eric Wilson on 8/22/16.
//  Copyright © 2016 Eric Wilson. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "ed871982a6e30f2aee02328436e96fac"

//let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)(Location.sharedInstance.latitude)\(LONGITUDE)(Location.shardInstance.longitude)\(APP_ID)\(API_KEY)"

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=ed871982a6e30f2aee02328436e96fac"

typealias DownloadComplete = () -> ()

let FORECAST_BASE_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?"
let COUNT_OF_DAYS = "&cnt="

//let CURRENT_FORECAST_WEATHER_URL = "\(FORECAST_BASE_URL)\(LATITUDE)(Location.sharedInstance.latitude)\(LONGITUDE)(Location.sharedInstance.longitude)\(COUNT_OF_DAYS)10\(APP_ID)\(API_KEY)"
let CURRENT_FORECAST_WEATHER_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=35&lon=139&cnt=10&mode=json&appid=ed871982a6e30f2aee02328436e96fac"
