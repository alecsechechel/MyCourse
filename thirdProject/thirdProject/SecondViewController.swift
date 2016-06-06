//
//  SecondViewController.swift
//  thirdProject
//
//  Created by Alex on 5/30/16.
//  Copyright © 2016 oleksii. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var text: String!

    @IBOutlet weak var back: UIButton!
    
    @IBAction func back(sender: UIButton) {
//        self.navigationController?.popViewControllerAnimated(true)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = text
        let homeButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Pause, target: self, action: #selector(pausa))
        
        var logButton = UIBarButtonItem(title: "RigthButtonTitle", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(pausa))
        
        self.navigationItem.leftBarButtonItem = homeButton
        self.navigationItem.rightBarButtonItem = logButton
        
        self.navigationController?.navigationBar.tintColor = UIColor.redColor()
        self.navigationController?.navigationBar.translucent = false

        // Do any additional setup after loading the view.
    }
    
    func pausa() {
        print("pausa")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
