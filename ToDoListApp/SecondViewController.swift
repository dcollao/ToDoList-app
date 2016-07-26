//
//  SecondViewController.swift
//  ToDoListApp
//
//  Created by Diego  Collao on 26-07-16.
//  Copyright © 2016 Undisclosure. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var taskTextField: UITextField!
    
    @IBAction func addItemAction(sender: AnyObject) {
        if taskTextField.text != "" && taskTextField.text != nil{
            toDoList.append(taskTextField.text!)
            taskTextField.text = ""
            NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //fix keyboard
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        taskTextField.resignFirstResponder()
        return true
    }
    
    //<--


}

