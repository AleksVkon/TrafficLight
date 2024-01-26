//
//  ViewController.swift
//  TrafficLight
//
//  Created by Aleksey Konchyts on 26.01.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var actionButton: UIButton!
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actionButton.layer.cornerRadius = 10
        redLight.layer.cornerRadius = 50
        redLight.alpha = 0.3
        yellowLight.layer.cornerRadius = 50
        yellowLight.alpha = 0.3
        greenLight.layer.cornerRadius = 50
        greenLight.alpha = 0.3
    }

    @IBAction func actionButtonIsTaped(_ sender: UIButton) {
        sender.setTitle("Next", for: .normal)
        if redLight.alpha == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        } else if greenLight.alpha == 1 {
            greenLight.alpha = 0.3
            redLight.alpha = 1
        } else {
            redLight.alpha = 1
        }
    }
}

