//
//  ViewController.swift
//  TrafficLight
//
//  Created by Aleksey Konchyts on 26.01.24.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var actionButton: UIButton!
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    enum CurrentLight {
        case red, green, yellow
    }
    
    private let lightIsOff = 0.3
    private let lightIsOn = 1.0
    private var currentLight = CurrentLight.red
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actionButton.layer.cornerRadius = 10
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
    }

    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
    }
    
    @IBAction func actionButtonIsTapped() {
        if actionButton.title(for: .normal) == "Start" {
            actionButton.setTitle("Next", for: .normal)
    }
        
        switch currentLight {
        case .red:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            currentLight = .yellow
        case .green:
            yellowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
            currentLight = .red
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLight = .green
        }
    }
        
//        sender.setTitle("Next", for: .normal)
//        if redLight.alpha == 1 {
//            redLight.alpha = 0.3
//            yellowLight.alpha = 1
//        } else if yellowLight.alpha == 1 {
//            yellowLight.alpha = 0.3
//            greenLight.alpha = 1
//        } else if greenLight.alpha == 1 {
//            greenLight.alpha = 0.3
//            redLight.alpha = 1
//        } else {
//            redLight.alpha = 1
//        }
}

