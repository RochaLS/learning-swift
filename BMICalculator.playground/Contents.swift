import UIKit

func BMICalculator(weight: Double, height: Double) -> String {
    let bmi :Double = weight / pow(height, 2)
    let shortenedBMI = String(format: "%.2F", bmi)
    var message = ""
    
    if bmi > 25 {
        message = "You are overweight!"
    } else if bmi >= 18.5 && bmi <= 25 {
        message = "Your have normal weight, good job!"
    } else {
        message = "You are underweight!"
    }
    return "Your BMI is \(shortenedBMI)! \(message) "
}

print(BMICalculator(weight: 60, height: 1.68))
