//
//  ViewController.swift
//  Homework 2 - Three sliders
//
//  Created by Виталий Сабин on 30.01.2021.
//

import UIKit

class ViewController: UIViewController {

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
    }
    
    @IBAction func slidersAction() {
        redSliderValue.text = String(format:"%.2f", redSlider.value)
        greenSliderValue.text = String(format:"%.2f", greenSlider.value)
        blueSliderValue.text = String(format:"%.2f", blueSlider.value)
        
        colorChange()
    }
    
    private func colorChange() {
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
}

