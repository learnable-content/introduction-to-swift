//
//  Activity.swift
//  ActivityLogger
//
//  Created by Brett Romero on 6/16/15.
//  Copyright (c) 2015 Brett Romero. All rights reserved.
//

import UIKit

class Activity: NSObject {
   
    init(activityName:String, totalTime:Int){
        self.activityName = activityName
        self.totalTime = totalTime
    }
    
    var activityName:String
    var totalTime:Int
}
