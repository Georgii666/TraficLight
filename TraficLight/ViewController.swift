//
//  ViewController.swift
//  TraficLight
//
//  Created by GEORGII LITVINENKO on 29.01.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        redView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        greenView.layer.cornerRadius = 50
        
    }
    
    @IBAction func startButtonTapped() {
        
        startButton.setTitle("Next", for: .normal)
        
        if redView.alpha != 1 && yellowView.alpha != 1 && greenView.alpha != 1 {
            redView.alpha = 1
        } else if redView.alpha == 1 && yellowView.alpha != 1 && greenView.alpha != 1 {
            yellowView.alpha = 1
            redView.alpha = 0.3
        } else if redView.alpha != 1 && yellowView.alpha == 1 && greenView.alpha != 1 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else {
            redView.alpha = 0.3
            redView.alpha = 0.3
            greenView.alpha = 0.3
        }
        
    }
}

