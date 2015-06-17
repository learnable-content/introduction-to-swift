//
//  SecondViewController.swift
//  ActivityLogger
//
//  Created by Brett Romero on 6/8/15.
//  Copyright (c) 2015 Brett Romero. All rights reserved.
//

import UIKit

class PerformanceViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var act1 = Activity(activityName: "Running", totalTime: 10)
        var act2 = Activity(activityName: "Swimming", totalTime: 20)
        var act3 = Activity(activityName: "Jogging", totalTime: 15)
        ActivityManager.activities.append(act1)
        ActivityManager.activities.append(act2)
        ActivityManager.activities.append(act3)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        tableview.reloadData()
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
        cell.textLabel!.text = activity.activityName
        return cell
    }
}

