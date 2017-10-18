//
//  CreateTaskViewController.swift
//  DoIT
//
//  Created by Andy Smith on 18/10/2017.
//  Copyright © 2017 Andy Smith. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameEntryField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

        // Do any additional setup after loading the view.
   
    @IBAction func addTapped(_ sender: Any) {
        let task = Task()
        task.name = taskNameEntryField.text!
        task.important = importantSwitch.isOn
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

   

}

