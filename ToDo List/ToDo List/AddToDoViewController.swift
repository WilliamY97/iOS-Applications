//
//  AddToDoViewController.swift
//  ToDo List
//
//  Created by William Yang on 2017-10-29.
//  Copyright © 2017 WillYApps. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    // reference to previous view controller passed in as previousVC
    // we're not actually making a new todotableview but just saying that it's of this type
    var previousVC = ToDoTableViewController()

    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    @IBAction func addTapped(_ sender: AnyObject) {

    /*
        let toDo = ToDo()
        
        if let titleText = titleTextField.text {
            toDo.name = titleTextField.text!
            toDo.important = importantSwitch.isOn
        
            previousVC.toDos.append(toDo)
            previousVC.tableView.reloadData()        // check array for more info as we have added new data

            navigationController?.popViewController(animated: true)         // pop this navigation back to the previous nav
        }
    */
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            let toDo = ToDoCoreData(entity: ToDoCoreData.entity(), insertInto: context)
            
            if let titleText = titleTextField.text {
                toDo.name = titleText
                toDo.important = importantSwitch.isOn
            }
            
            try? context.save()
            
            navigationController?.popViewController(animated: true)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
