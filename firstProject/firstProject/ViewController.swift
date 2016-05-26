//
//  ViewController.swift
//  firstProject
//
//  Created by Alex on 5/26/16.
//  Copyright © 2016 oleksii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var phone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.button.setTitle("New", forState: UIControlState.Normal)
//        self.button.layer.borderColor = UIColor.greenColor().CGColor
//        self.button.layer.borderWidth = 5
        
        let def = NSUserDefaults.standardUserDefaults()
        
        let prin = def.integerForKey("\(Constants.NSUserDefaults.ageKey)")
        print(prin)
        def.setInteger(10, forKey: "\(Constants.NSUserDefaults.ageKey)")

        
    }
    
    @IBAction func tapButton(sender: UIButton) {
        if let phone = self.phone.text {
            if phone == "777" {
                self.showAllert("Success", text: "Correct!")
            } else {
                self.showAllert("Error", text: "Wrong number")
            }
        }
    }
    
    func showAllert(title: String, text: String) {
        let alert = UIAlertController(title: title, message: text, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Cancel, handler: nil))
        //event handler with closure
        presentViewController(alert, animated: true, completion: nil)
    }
    
}

