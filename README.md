
//
//  FirstViewController.swift
//  TaskBySoding
//
//  Created by BSTICT on 20/03/2017.
//  Copyright © 2017 BSTICT. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet var tblTasks : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblTasks.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return taskMgr.tasks.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Default Tasks")
        
        cell.textLabel?.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].desc
        
        return cell
    }
    private func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: IndexPath){
        if (editingStyle == UITableViewCellEditingStyle.delete){
            
            taskMgr.tasks.remove(at: indexPath.row)
            tblTasks.reloadData()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  SecondViewController.swift
//  TaskBySoding
//
//  Created by BSTICT on 20/03/2017.
//  Copyright © 2017 BSTICT. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
    
    @IBAction func btnAddTask(sender : UIButton){
        if (txtTask.text == ""){
            //Task Title is blank, do not add a record
        } else {
            //add record
            taskMgr.addTask(name: txtTask.text!, desc: txtDesc.text!)
            
            //dismiss keyboard and reset fields
            
            self.view.endEditing(true)
            txtTask.text = nil
            txtDesc.text = nil


    func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
            func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
                self.view.endEditing(true)
            }
            
            func textFieldShouldReturn(textField: UITextField) -> Bool{
                textField.resignFirstResponder()
                return true
            }
        
}
}
}



//
//  FirstViewController.swift
//  TaskBySoding
//
//  Created by BSTICT on 20/03/2017.
//  Copyright © 2017 BSTICT. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet var tblTasks : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblTasks.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return taskMgr.tasks.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Default Tasks")
        
        cell.textLabel?.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].desc
        
        return cell
    }
    private func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: IndexPath){
        if (editingStyle == UITableViewCellEditingStyle.delete){
            
            taskMgr.tasks.remove(at: indexPath.row)
            tblTasks.reloadData()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

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


