//
//  WeatherData.swift
//  Tempest
//
//  Created by Bersabeh Asefa on 5/1/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class WeatherData {
    var WeatherEmoji: String
    var currentTemp: Int
    var highTemp: Int
    var lowTemp: Int
    

//    clear-day, clear-night, rain, snow, sleet, wind, fog, cloudy, partly-cloudy-day, or partly-cloudy-night.
    
    
    
    init(json: JSON) {
        self.currentTemp = Int(json["currently"]["temperature"].doubleValue)
        self.highTemp = Int(json["daily"]["date"][(0)]["temperatureHigh"].doubleValue)
        self.lowTemp = Int(json["daily"]["date"][(0)]["temperatureLow"].doubleValue)
        
        var weatherIcon = json["currently"]["icon"].stringValue
        
        switch weatherIcon {
        case "cleary-day":
            self.WeatherEmoji = "☀️"
        case "clear night":
            self.WeatherEmoji = "🌕"
        case "rain":
            self.WeatherEmoji = "🌧"
        case "snow":
            self.WeatherEmoji = "❄️"
        case "sleet":
            self.WeatherEmoji = "🌨"
        case " wind":
            self.WeatherEmoji = "🌬"
        case "fog":
                self.WeatherEmoji = "🌫"
        case " cloudy":
            self.WeatherEmoji = "☁️"
        case "partly-cloudy-day":
            self.WeatherEmoji = "🌥"
        case " partly-cloudy-night":
            self.WeatherEmoji = "☁️"
       
        
        default:
            self.WeatherEmoji = "☂️"
        }
    
    
    }


}







