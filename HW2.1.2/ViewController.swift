//
//  ViewController.swift
//  HW2.1.2
//
//  Created by Роман on 30.01.2020.
//  Copyright © 2020 Romnet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    var lightState = 0 // Текущий горящий сигнал сверху вниз, 0 - не горит ничего
    let alphaOffState: CGFloat = 0.3
    let alphaOnState: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        
        redLightView.alpha = alphaOffState
        yellowLightView.alpha = alphaOffState
        greenLightView.alpha = alphaOffState
        
        startButton.layer.cornerRadius = 30
    }


    @IBAction func startButtonPressed() {
        switch lightState {
        case 0:
            redLightView.alpha = alphaOnState
            startButton.setTitle("NEXT", for: .normal)
            lightState = 1
        case 1:
            redLightView.alpha = alphaOffState
            yellowLightView.alpha = alphaOnState
            lightState = 2
        case 2:
            yellowLightView.alpha = alphaOffState
            greenLightView.alpha = alphaOnState
            lightState = 3
        case 3:
            greenLightView.alpha = alphaOffState
            redLightView.alpha = alphaOnState
            lightState = 1
        default:
            break
        }
    }
}

