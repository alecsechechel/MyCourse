//
//  ViewController.swift
//  thirdProject
//
//  Created by Alex on 5/30/16.
//  Copyright © 2016 oleksii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Navgitions"
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func go(sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewControllerWithIdentifier("nextView") as! SecondViewController
        vc.text = "Hello"
//        self.navigationController?.pushViewController(vc, animated: true)
        self.presentViewController(vc, animated:true, completion:nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

