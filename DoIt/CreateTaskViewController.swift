//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Erza Carlsson on 5/13/18.
//  Copyright © 2018 Errzilla. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    
    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameText: UITextField!
    
    var previousViewControler = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTaskButton(_ sender: Any) {
        
        //Create a Task from the outlet information
        let task = Task()
        task.name  = taskNameText.text!
        task.important = importantSwitch.isOn
        
        //Add new task to array in previous viewController
        
        previousViewControler.tasks.append(task)
        previousViewControler.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
