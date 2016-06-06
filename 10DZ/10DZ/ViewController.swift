//
//  ViewController.swift
//  10DZ
//
//  Created by Alex on 6/2/16.
//  Copyright © 2016 oleksii. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textFied: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        print("textFieldShouldBeginEditing")
        return true
        
    }// return NO to disallow editing.
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing")
        return true
        
    }// return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end

    func textFieldShouldClear(textField: UITextField) -> Bool {
        print("textFieldShouldClear")
        return true
        
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        return true
    }
}

