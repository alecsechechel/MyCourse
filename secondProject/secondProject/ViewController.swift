//
//  ViewController.swift
//  secondProject
//
//  Created by Alex on 5/28/16.
//  Copyright © 2016 oleksii. All rights reserved.
//
// 1. NSMutableAttributedString

import UIKit
import SkyFloatingLabelTextField

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let atr = NSMutableAttributedString(string: label.text!, attributes: nil)
        let range = NSRange(location: 0, length: 2)
        self.label.attributedText = atr
        
        print("init")
        
        let textField = SkyFloatingLabelTextField(frame: CGRectMake(10, 10, 200, 45))
        textField.placeholder = "Name"
        textField.title = "Your full name"
        self.view.addSubview(textField)
        
        let view1 = UIView(frame: self.view.frame)
        view1.backgroundColor = UIColor.redColor()
        
        var frame = self.view.frame
        frame.origin.x = self.view.frame.size.width
        let view2 = UIView(frame: frame)
        view1.backgroundColor = UIColor.yellowColor()
        
        self.scrollView.contentSize = CGSize(width: self.view.frame.width * 2, height: self.view.frame.height)
        self.scrollView.addSubview(view2)
        self.scrollView.addSubview(view1)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(true)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(true)
        print("viewDidDisappear")
    }
    
}

