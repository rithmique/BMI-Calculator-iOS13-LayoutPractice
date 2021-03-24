//
//  Calculator.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Максим on 24.03.2021.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import UIKit

struct Calculator {
    
    var calculatedBMI = "0.0"
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let bmi = weight / pow(height, 2)
        calculatedBMI = String(format: "%.1f", bmi)
    }
}
