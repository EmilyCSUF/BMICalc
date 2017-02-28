//
//  ViewController.swift
//  BMICalc
//
//  Created by Emily Michelle Lin on 2/26/17.
//  Copyright © 2017 Emily Michelle Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Heighttext: UILabel!
    @IBOutlet weak var Weighttext: UILabel!
    @IBOutlet weak var MetricText: UILabel!
    @IBOutlet weak var Heightinput: UITextField!
    @IBOutlet weak var Weightinput: UITextField!
    @IBOutlet weak var Results: UILabel!
    
    @IBAction func MetricSwitch(_ sender: UISwitch) {
        //metric: height- Centimeters weight: kilograms
        //standard: height: inches weight: Pounds
        var switchstatus = 0
        if sender.isOn {
            Weighttext.text = "Weight(kg)"
            Heighttext.text = "Height(cm)"
            switchstatus = 0 //metric is on
        }
        else{
            Weighttext.text = "Weight(lb)"
            Heighttext.text = "Height(in)"
            switchstatus = 1 //metric is not on
        }
        
        Heighttext.text = "Height."
 
    }

    @IBOutlet weak var ImageDisplay: UIImageView!

    @IBAction func Calculate(_ sender: AnyObject) {
        let x = Double(Heighttext.text!)!
        let y = Double(Weighttext.text!)!

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

