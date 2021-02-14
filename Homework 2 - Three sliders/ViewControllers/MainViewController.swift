//
//  MainViewController.swift
//  Homework 2 - Three sliders
//
//  Created by Виталий Сабин on 14.02.2021.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func changeColor(_ color: UIColor)
}

class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            let settingsVC = (segue.destination as? SettingsViewController)
        else {return}
        
        settingsVC.delegate = self
        settingsVC.mainViewColor = view.backgroundColor
        
    }
}

extension MainViewController: SettingsViewControllerDelegate {
    func changeColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
