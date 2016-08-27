//
//  Location.swift
//  RainShine
//
//  Created by Eric Wilson on 8/24/16.
//  Copyright © 2016 Eric Wilson. All rights reserved.
//


import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    
    var latitude: Double = 0.0
    var longitude: Double = 0.0
}
