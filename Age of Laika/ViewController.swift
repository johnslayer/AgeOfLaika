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
        let optionalDoubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        var realDogYears:Double
        
        if optionalDoubleFromTextField > 2
        {
            realDogYears = (10.5 * 2) + (optionalDoubleFromTextField - 2) * 4
        }
        else
        {
            realDogYears = optionalDoubleFromTextField * 10.5
        }
        
        labelLaikasAgeInDogYears.hidden = false
        labelLaikasAgeInDogYears.text = "\(realDogYears)"
     
        textLaikasAgeInHumanYears.text = ""
        textLaikasAgeInHumanYears.resignFirstResponder()

    }
}

