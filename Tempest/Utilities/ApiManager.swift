//
//  ApiManager.swift
//  Tempest
//
//  Created by Devan Allara on 4/30/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class ApiManager {
    
    var shared = ApiManager()
    var apiKeys = ApiKays()
    
    private let darkSkyBaseURL = "https://api.darksky.net/forecast"
    
    private let googleBaseURL = "https://maps.googleapis.com/maps/api/geocode/json?address="
    
    

    func getWeather(latitude: Double, longitude: Double, onSuccess: @escaping (WeatherData) -> Void, onError: @escaping (Error) -> Void) {
       
        let url = URL(string: "\(darkSkyBaseURL)\(apiKeys.darkSkyKey)/\(String(latitude)),\(String(longitude))")
        
        var request =  Alamofire.request(url!, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil)
        request.responseJSON { (response) in
            print(response)
        }

    }

}
