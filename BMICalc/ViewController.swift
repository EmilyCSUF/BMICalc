//
//  ViewController.swift
//  BMICalc
//
//  Created by Emily Michelle Lin on 2/26/17.
//  Copyright © 2017 Emily Michelle Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var switchstatus = 0
    @IBOutlet weak var Heighttext: UILabel!
    @IBOutlet weak var Weighttext: UILabel!
    @IBOutlet weak var MetricText: UILabel!
    @IBOutlet weak var Heightinput: UITextField!
    @IBOutlet weak var Weightinput: UITextField!
    @IBOutlet weak var Results: UILabel!
    
    @IBAction func MetricSwitch(_ sender: UISwitch) {
        //metric: height- Centimeters weight: kilograms
        //standard: height: inches weight: Pounds
        if sender.isOn {
            Weighttext.text = "Weight (kg)"
            Heighttext.text = "Height (m)"
            switchstatus = 0 //metric is on
        }
        else{
            Weighttext.text = "Weight (lb)"
            Heighttext.text = "Height (in)"
            switchstatus = 1 //metric is not on
        }
        
    }

    @IBOutlet weak var ImageDisplay: UIImageView!

    @IBAction func Calculate(_ sender: AnyObject) {
        let x = Double(Heightinput.text!)!
        let y = Double(Weightinput.text!)!
        var bmi: Double = 0.0
        if switchstatus == 0{ // kg + cm
         bmi = (y / (x * x))
            //testing values
            //Results.text = "\(x),\(y),\(bmi)"
        }
        else{ // lb + inches
         bmi = (y*2.2)/(x*x*0.394)
            //testing values
            //Results.text = "\(x),\(y),\(bmi)"
        }
        
        var bmis = String(format:"%.2f", bmi)
        if bmi<16 {
            Results.text = "\(bmis) Severe Thinness"
            ImageDisplay.image = UIImage(named:"Underweight")
        }
        else if bmi >= 16 && bmi < 17 {
            Results.text = "\(bmis) Moderate Thinness"
            ImageDisplay.image = UIImage(named:"Underweight")
        }
        else if bmi >= 17 && bmi < 18.5{
            Results.text = "\(bmis) Mild Thinness"
            ImageDisplay.image = UIImage(named:"Underweight")

        }
        else if bmi >= 18.5 && bmi < 25{
            Results.text = "\(bmis) Normal Range"
            ImageDisplay.image = UIImage(named:"Normal")

        }
        else if bmi >= 25 && bmi < 30{
            Results.text = "\(bmis) Overweight"
            ImageDisplay.image = UIImage(named:"Overweight")
        }
        else if bmi >= 30 && bmi < 35{
            Results.text = "\(bmis) Obese Class I"
            ImageDisplay.image = UIImage(named:"Obese")
        }
        else if bmi >= 35 && bmi < 40{
            Results.text = "\(bmis) Obese Class II"
            ImageDisplay.image = UIImage(named:"Obese")
        }
        else if bmi >= 40{
            Results.text = "\(bmis) Obese Class III"
            ImageDisplay.image = UIImage(named:"Obese")
        }
 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

