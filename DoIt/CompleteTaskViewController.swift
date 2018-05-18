//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Erza Carlsson on 5/18/18.
//  Copyright © 2018 Errzilla. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!
    var task = Task()
     var previousViewControler = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important{
            taskLabel.text = "‼️ \(task.name)!"
        }
        else{
            taskLabel.text = "  \(task.name)"
        }

        taskLabel.text = task.name
        
    }

    @IBAction func completeTapped(_ sender: Any) {
        previousViewControler.tasks.remove(at: previousViewControler.selectedIndex)
        previousViewControler.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
