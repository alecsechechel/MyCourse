//
//  CollectioViewController.swift
//  10DZ
//
//  Created by Alex on 6/2/16.
//  Copyright © 2016 oleksii. All rights reserved.
//

import UIKit

class CollectioViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var colors = [UIColor.redColor(), UIColor.blueColor(), UIColor.brownColor()]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colors.count
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell1", forIndexPath: indexPath) as? CollectionViewCell {
            cell.viewCell.backgroundColor = colors[indexPath.row % 3]
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
//        indexPath.row
//        indexPath.section
        let cell = "\(subscriptions(indexPath.row, indexPath.section))"
    }
}
