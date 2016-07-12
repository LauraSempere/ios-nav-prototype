//
//  DevicesViewController.swift
//  Prototype
//
//  Created by Laura Scully on 9/7/2016.
//  Copyright © 2016 laura.com. All rights reserved.
//

import UIKit

private let reuseIdentifier = "myCell"

class DevicesViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.allowsMultipleSelection = true
        collectionView?.contentInset.left = 20
        collectionView?.contentInset.right = 20
        collectionView?.backgroundColor = UIColor.whiteColor()

//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next >", style: UIBarButtonItemStyle.Plain, target: self, action: "nextView")
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }
    
    
    func nextView(){
        let nextVC = self.storyboard?.instantiateViewControllerWithIdentifier("FeaturesViewController")
        self.navigationController?.pushViewController(nextVC!, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

//    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 10
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)
        cell.backgroundColor = UIColor.cyanColor()
        return cell
    }

    override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        
        switch kind {
            
        case UICollectionElementKindSectionHeader:
            
            let headerView = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "header", forIndexPath: indexPath)
            headerView.backgroundColor = UIColor.whiteColor()
            
            return headerView
            
        case UICollectionElementKindSectionFooter:
            let footerView = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "footer", forIndexPath: indexPath)
            
            footerView.backgroundColor = UIColor.whiteColor();
            return footerView
            
        default:
            
            assert(false, "Unexpected element kind")
        }
    }

    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let cell = collectionView.cellForItemAtIndexPath(indexPath)
        cell?.backgroundColor = UIColor.orangeColor()
    }
    
    
    override func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
        let cell = collectionView.cellForItemAtIndexPath(indexPath)
        cell?.backgroundColor = UIColor.cyanColor()
    }
    
}
