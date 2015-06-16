//
//  SecondViewController.swift
//  ActivityLogger
//
//  Created by Brett Romero on 6/8/15.
//  Copyright (c) 2015 Brett Romero. All rights reserved.
//

import UIKit

class PerformanceViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var activities = ["Running", "Swimming", "Jogging"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "test")
        cell.textLabel!.text = activities[indexPath.item]
        return cell
    }
}

