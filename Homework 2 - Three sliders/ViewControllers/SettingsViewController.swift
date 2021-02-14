//
//  ViewController.swift
//  Homework 2 - Three sliders
//
//  Created by Виталий Сабин on 30.01.2021.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redSliderValue: UILabel!
    @IBOutlet var greenSliderValue: UILabel!
    @IBOutlet var blueSliderValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 15
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        colorChange()
        
        setValue(for: redSliderValue, greenSliderValue, blueSliderValue)
    }
    
    
    @IBAction func slidersAction(_ sender: UISlider) {
        colorChange()
        
        switch sender.tag {
        case 0: redSliderValue.text = string(from: sender)
        case 1: greenSliderValue.text = string(from: sender)
        case 2: blueSliderValue.text = string(from: sender)
        default: break
        }
    }
    
    private func colorChange() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label.tag {
            case 0: redSliderValue.text = string(from: redSlider)
            case 1: greenSliderValue.text = string(from: greenSlider)
            case 2: blueSliderValue.text = string(from: blueSlider)
            default: break
            }
        }
    }
   
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
}

