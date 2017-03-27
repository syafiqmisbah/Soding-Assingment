//
//  TaskManager.swift
//  TaskBySoding
//
//  Created by BSTICT on 20/03/2017.
//  Copyright © 2017 BSTICT. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task {
    var name = "Name"
    var desc = "Description"
}

class TaskManager: NSObject{
    var tasks = [task]()
    
    func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc))
    }
}


