//
//  AddViewController.swift
//  ActivityLogger
//
//  Created by Brett Romero on 6/16/15.
//  Copyright (c) 2015 Brett Romero. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet var activityLabel: UITextField!
    
    
    @IBAction func addActivity_Click(sender: AnyObject) {
        ActivityManager.activities.append(Activity(activityName: activityLabel.text, totalTime: 0))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
