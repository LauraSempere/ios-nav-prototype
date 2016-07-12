//
//  ResultsTableViewController.swift
//  Prototype
//
//  Created by Laura Scully on 10/7/2016.
//  Copyright © 2016 laura.com. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController {
    
    let results = ["Estimated Cost": ["$10,000"], "Platforms": ["iOS", "Android"], "Features": ["Gaming", "AR"] ]
    let resultsKeys = ["Estimated Cost", "Platforms", "Features"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func newCalculator(sender: AnyObject) {
     self.navigationController?.popToRootViewControllerAnimated(true)
    }
    @IBAction func saveCalcAlert(sender: AnyObject) {
//        let nextController = UIAlertController(title: "Save Current results", message: "Enter a name for the current results", preferredStyle: UIAlertControllerStyle.Alert)
//        nextController.addTextFieldWithConfigurationHandler { (textField: UITextField!) in
//            textField.placeholder = "Name"
//        }
//        
//        let okAction = UIAlertAction(title: "Save", style: UIAlertActionStyle.Default){
//            action in
//            self.goToSavedCalcs()
//            //self.dismissViewControllerAnimated(true, completion: nil)
//        }
//        
//        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default){
//            action in self.dismissViewControllerAnimated(true, completion: nil)
//        }
//        
//        nextController.addAction(okAction)
//        nextController.addAction(cancelAction)
//        
//        self.presentViewController(nextController, animated: true, completion: nil)
        goToSavedCalcs()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func goToSavedCalcs(){
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("TabBarController") as! UITabBarController
        vc.selectedIndex = 1
        self.presentViewController(vc, animated: true, completion: nil)
        
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
            let cell = tableView.dequeueReusableCellWithIdentifier("estimateCell", forIndexPath: indexPath)
            cell.backgroundColor = UIColor.cyanColor()
           //cell.backgroundColor = UIColor(red: 0, green: 0.5922, blue: 0.8275, alpha: 0.6)
            cell.textLabel?.text = resultsKeys[indexPath.row]
            cell.detailTextLabel?.text = results[resultsKeys[indexPath.row]]?.joinWithSeparator(", ")

            return cell

        }else{
            let cell = tableView.dequeueReusableCellWithIdentifier("resultsCell", forIndexPath: indexPath)
            cell.textLabel!.text = resultsKeys[indexPath.row]
            cell.detailTextLabel?.text = results[resultsKeys[indexPath.row]]?.joinWithSeparator(", ")
            return cell
        }
    }

}
