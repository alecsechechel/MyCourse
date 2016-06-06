//
//  TableViewControler.swift
//  10DZ
//
//  Created by Alex on 6/2/16.
//  Copyright © 2016 oleksii. All rights reserved.
//

import UIKit

class TableViewControler: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var array = [1, 2, 3, 4, 5]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as?  TableViewCell {
            cell.label.text = "\(array[indexPath.row])"
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("cell press \(indexPath.row)")
    }
}
