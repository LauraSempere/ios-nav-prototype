//
//  DetailsTableViewController.swift
//  Prototype
//
//  Created by Laura Scully on 11/7/2016.
//  Copyright © 2016 laura.com. All rights reserved.
//

import UIKit

class DetailsTableViewController: UITableViewController {

    let results = ["Estimated Cost": ["$10,000"], "Platforms": ["iOS", "Android"], "Features": ["Gaming", "AR"] ]
    let resultsKeys = ["Estimated Cost", "Platforms", "Features"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
       // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return results.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // let resultsKeys = Array(results.map { String($0) })
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("estimateCell2", forIndexPath: indexPath)
            cell.backgroundColor = UIColor.cyanColor()
            //cell.backgroundColor = UIColor(red: 0, green: 0.5922, blue: 0.8275, alpha: 0.6)
            cell.textLabel?.text = resultsKeys[indexPath.row]
            cell.detailTextLabel?.text = results[resultsKeys[indexPath.row]]?.joinWithSeparator(", ")
            
            return cell
            
        }else{
            let cell = tableView.dequeueReusableCellWithIdentifier("resultsCell2", forIndexPath: indexPath)
            cell.textLabel!.text = resultsKeys[indexPath.row]
            cell.detailTextLabel?.text = results[resultsKeys[indexPath.row]]?.joinWithSeparator(", ")
            return cell
        }
    }

}
