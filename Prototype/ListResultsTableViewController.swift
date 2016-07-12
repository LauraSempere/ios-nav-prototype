//
//  ListResultsTableViewController.swift
//  Prototype
//
//  Created by Laura Scully on 11/7/2016.
//  Copyright © 2016 laura.com. All rights reserved.
//

import UIKit

class ListResultsTableViewController: UITableViewController {
    
    var calculators:[Calculator] = [Calculator(estimate:16000, features: ["gaming", "AR"], platforms: ["iOS", "Android"]),
                                    Calculator(estimate:24000, features: ["Messaging", "Newsfeed", "gaming"], platforms: ["iOS", "Android", "Windows"])]
    
       override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return calculators.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("listDetailsCell", forIndexPath: indexPath)
        cell.textLabel?.text = "$" + String(calculators[indexPath.row].estimate)
        cell.detailTextLabel?.text = calculators[indexPath.row].platforms.joinWithSeparator(", ") + "..."

        // Configure the cell...

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let detailVC = storyboard?.instantiateViewControllerWithIdentifier("DetailsViewController") as! ResultsTableViewController
        self.navigationController?.pushViewController(detailVC, animated: true)
    }

}
