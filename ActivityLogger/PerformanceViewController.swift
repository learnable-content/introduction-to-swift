//
//  SecondViewController.swift
//  ActivityLogger
//
//  Created by Brett Romero on 6/8/15.
//  Copyright (c) 2015 Brett Romero. All rights reserved.
//

import UIKit

class PerformanceViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var act2 = Activity(activityName: "Swimming", totalTime: 20)
        var act3 = Activity(activityName: "Jogging", totalTime: 15)
        
        ActivityManager.activities.append(act2)
        ActivityManager.activities.append(act3)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
       tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ActivityManager.activities.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "test")
        var activity = ActivityManager.activities[indexPath.item]
        cell.textLabel!.text = "\(activity.activityName) \(activity.totalTime)"
        return cell
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        if(ActivityManager.activities.count > 1){
            return true
        }
        return false
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if(editingStyle == .Delete){
            ActivityManager.activities.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
}

