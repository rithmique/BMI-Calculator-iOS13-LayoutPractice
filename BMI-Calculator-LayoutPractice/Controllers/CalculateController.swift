//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateController: UIViewController {
    
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightValue.text = "\(String(format: "%.2f", sender.value)) m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightValue.text = "\(Int(sender.value)) kg"
    }
    @IBAction func calculate(_ sender: UIButton) {
        calculator.calculateBMI(weightSlider: weightSlider.value, heightSlider: heightSlider.value)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiText = calculator.calculatedBMI
        }
    }
    
    
    
}

