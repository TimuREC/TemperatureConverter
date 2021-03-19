//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Timur Begishev on 17.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusTemp: UILabel!
    @IBOutlet weak var fahrenheitTemp: UILabel!
    @IBOutlet weak var temperatureSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        temperatureSlider.minimumValue = 0
        temperatureSlider.maximumValue = 150
        temperatureSlider.value = 0
    }

    @IBAction func temperatureChanging(_ sender: UISlider) {
        celsiusTemp.text = "\(Int(temperatureSlider.value))ºC"
        fahrenheitTemp.text = "\(Int(temperatureSlider.value * 9 / 5 + 32))ºF"
    }
    
}
