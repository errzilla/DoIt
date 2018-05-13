//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Erza Carlsson on 5/13/18.
//  Copyright © 2018 Errzilla. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    
    @IBAction func addTaskButton(_ sender: Any) {
    }
    @IBOutlet var importantSwitch: UIView!
    @IBOutlet weak var taskNameText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
