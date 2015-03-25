//
//  ViewController.swift
//  Age of Laika
//
//  Created by Matt Grimes on 3/24/15.
//  Copyright (c) 2015 Daily Dram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelLaikasAgeInDogYears: UILabel!
    @IBOutlet weak var textLaikasAgeInHumanYears: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonConvertToDogYears(sender: AnyObject) {
        //first thing we should do is convert the string to an integer
//        let stringFromTextField = textLaikasAgeInHumanYears.text
//        let optionalIntFromTextField = stringFromTextField.toInt()
//        let intFromOptional = optionalIntFromTextField!
        
        let intFromOptional = textLaikasAgeInHumanYears.text.toInt()!
        
        
        //now we display it
        labelLaikasAgeInDogYears.hidden = false
        labelLaikasAgeInDogYears.text = "\(intFromOptional * 7)"
        
        //some cleanup
        textLaikasAgeInHumanYears.text = ""
        textLaikasAgeInHumanYears.resignFirstResponder()
        
        
    }

    @IBAction func convertRealConversionToDogYearsPressed(sender: AnyObject) {
        let stringFromTextField = textLaikasAgeInHumanYears.text
        let optionalIntFromTextField = stringFromTextField.toInt()
        var intFromOptional = optionalIntFromTextField!
        
        if intFromOptional <= 2 {
            labelLaikasAgeInDogYears.hidden = false
            var doubleFromOptional = Double(intFromOptional)
            labelLaikasAgeInDogYears.text = "\(doubleFromOptional * 10.5)"
        }
        else {
            labelLaikasAgeInDogYears.hidden = false
            labelLaikasAgeInDogYears.text = "\(intFromOptional * 4)"
        }
     
        textLaikasAgeInHumanYears.text = ""
        textLaikasAgeInHumanYears.resignFirstResponder()

    }
}

