//
//  ViewController.swift
//  DoIt
//
//  Created by Erza Carlsson on 5/13/18.
//  Copyright © 2018 Errzilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = makeTasks()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        
        if task.important{
             cell.textLabel?.text = "‼️ \(task.name)!"
        }
        else{
             cell.textLabel?.text = "  \(task.name)"
        }
        
       
        
        return cell
    }

    func makeTasks() -> [Task]{
        let task0 = Task()
        task0.name = "Walk the dog"
        task0.important = false
        
        let task1 = Task()
        task1.name = "Buy Cheese"
        task1.important = true
        
        let task2 = Task()
        task2.name = "Mow the lawn"
        task2.important = false
        
        return [task0, task1, task2]
        
        
    }
    @IBAction func plusTapped(_ sender: Any) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
    
}
