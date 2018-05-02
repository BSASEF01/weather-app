//
//  HomeScreenViewController.swift
//  Tempest
//
//  Created by Devan Allara on 4/30/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//

import UIKit


class HomeScreenViewController: UIViewController {
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var weatherEmoji: UILabel!
    @IBOutlet weak var currentTemp: UILabel!
    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!
    var apiManager = ApiManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        apiManager.shared.getWeather(latitude: <#T##Double#>, longitude: <#T##Double#>, onSuccess: { (<#WeatherData#>) in
            <#code#>
        }) { (<#Error#>) in
            <#code#>
        }
    
}

}









