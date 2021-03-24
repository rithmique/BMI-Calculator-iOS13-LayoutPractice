//
//  Calculator.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Максим on 24.03.2021.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import UIKit

struct Calculator {
    
    var bmi: BMI?
    
    let underWeightAdvice = ["eat more!", "please, eat some more!"]
    let healthWeightAdvice = ["you are doing fine!", "great job", "your body is great!"]
    let overWeightAdvice = ["eat less please!", "do some sport and eat less please", "please, careful about your health and food!"]
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let BMIValue = weight / pow(height, 2)
        
        if BMIValue < 18.5 {
            bmi = BMI(value: BMIValue, advice: underWeightAdvice[.random(in: 0..<underWeightAdvice.count)],
                      color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if BMIValue > 18.5 && BMIValue < 24.9 {
            bmi = BMI(value: BMIValue, advice: healthWeightAdvice[.random(in: 0..<healthWeightAdvice.count)], color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }else{
            bmi = BMI(value: BMIValue, advice: overWeightAdvice[.random(in: 0..<overWeightAdvice.count)], color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    func getValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    func getAdvice() -> String {
        return bmi!.advice
    }
    func getColor() -> UIColor {
        return bmi!.color
    }
}
