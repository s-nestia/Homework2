//
//  ViewController.swift
//  Homework2
//
//  Created by Anastasia Liapich on 6/18/22.
//  Copyright © 2022 Anastasia Liapich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var stopSignal: UIView!
    @IBOutlet var waitingSignal: UIView!
    @IBOutlet var goSignal: UIView!
    @IBOutlet var lightSwitchButton: UIButton!
    
    private let disabledLightAlpha: CGFloat = 0.3
    private let enabledLightAlpha: CGFloat = 1.0

    override func viewDidLoad() {
        super.viewDidLoad()

        stopSignal.layer.cornerRadius = stopSignal.frame.width / 2
        waitingSignal.layer.cornerRadius = waitingSignal.frame.width / 2
        goSignal.layer.cornerRadius = goSignal.frame.width / 2
        
        lightSwitchButton.layer.cornerRadius = 10
        
        stopSignal.alpha = disabledLightAlpha
        waitingSignal.alpha = disabledLightAlpha
        goSignal.alpha = disabledLightAlpha
    }

    @IBAction func switchLight(_ sender: Any) {
        if stopSignal.alpha == enabledLightAlpha {
            waitingSignal.alpha = enabledLightAlpha
            stopSignal.alpha = disabledLightAlpha
        } else if waitingSignal.alpha == enabledLightAlpha {
            goSignal.alpha = enabledLightAlpha
            waitingSignal.alpha = disabledLightAlpha
        } else if goSignal.alpha == enabledLightAlpha {
            stopSignal.alpha = enabledLightAlpha
            goSignal.alpha = disabledLightAlpha
        } else {
            lightSwitchButton.setTitle("NEXT", for: .normal)
            stopSignal.alpha = enabledLightAlpha
        }
    }
}
