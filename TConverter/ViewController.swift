//
//  ViewController.swift
//  TConverter
//
//  Created by Vitalii Navrotskyi on 21.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        
        // (0 °C × 9/5) + 32 = 32 °F
        let temperatureFahrenheit = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
        
    }
}

