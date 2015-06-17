
//
//  FirstViewController.swift
//  ActivityLogger
//
//  Created by Brett Romero on 6/8/15.
//  Copyright (c) 2015 Brett Romero. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var timer = NSTimer()
    var timerCounter = 0
    var currentActivity:Activity?
    
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var timerLabel: UILabel!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ActivityManager.activities.append((Activity(activityName: "Running", totalTime: 0)))
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        pickerView.reloadAllComponents()
        if(ActivityManager.activities.count == 1){
            currentActivity = ActivityManager.activities[0]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func processTimer(){
        timerCounter++
        timerLabel.text = "\(timerCounter)"
    }
    
    
    @IBAction func startButton_Click(sender: AnyObject) {
        if(startButton.titleLabel!.text == "Start"){
            timerCounter = 0
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("processTimer"), userInfo: nil, repeats: true)
            startButton.setTitle("Stop", forState: .Normal)
        }
        else {
            startButton.setTitle("Start", forState: .Normal)
            timer.invalidate()
            currentActivity?.totalTime += timerCounter
        }
    }
    
    //delegate
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        currentActivity = ActivityManager.activities[row]
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        var activity = ActivityManager.activities[row] as Activity
        return activity.activityName
    }
    
    //datasource
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ActivityManager.activities.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }

}

