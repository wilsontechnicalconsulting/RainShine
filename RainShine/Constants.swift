//
//  Constants.swift
//  RainShine
//
//  Created by Eric Wilson on 8/22/16.
//  Copyright © 2016 Eric Wilson. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "&lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "ed871982a6e30f2aee02328436e96fac"

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-36\(LONGITUDE)123\(APP_ID)\(API_KEY)"

typealias DownloadComplete = () -> ()
