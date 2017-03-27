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




