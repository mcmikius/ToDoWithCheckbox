//
//  AddTaskViewController.swift
//  ToDoWithCheckbox
//
//  Created by Mykhailo Bondarenko on 11.01.2020.
//  Copyright © 2020 Mykhailo Bondarenko. All rights reserved.
//

import UIKit



class AddTaskViewController: UIViewController {

    @IBOutlet weak var taskNameLabel: UITextField!
    
    @IBAction func addAction(_ sender: Any) {
        if taskNameLabel.text != "" {
            delegate?.addTask(name: taskNameLabel.text!)
        }
    }
    
    var delegate: AddTask?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
