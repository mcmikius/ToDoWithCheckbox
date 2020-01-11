//
//  ViewController.swift
//  ToDoWithCheckbox
//
//  Created by Mykhailo Bondarenko on 11.01.2020.
//  Copyright © 2020 Mykhailo Bondarenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AddTask, ChangeButton {
    
    
    

    var tasks: [Task] = []
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tasks.append(Task(name: "test"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskTableViewCell
        
        cell.taskNameLabel.text = tasks[indexPath.row].name
        if tasks[indexPath.row].checked {
            cell.checkBoxOutlet.setBackgroundImage(UIImage.init(systemName: "checkmark.circle.fill"), for: .normal)
        } else {
            cell.checkBoxOutlet.setBackgroundImage(UIImage.init(systemName: "circle"), for: .normal)
        }
        
        cell.delegate = self
        cell.indexP = indexPath.row
        cell.tasks = tasks
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! AddTaskViewController
        vc.delegate = self
    }
    
    func addTask(name: String) {
        tasks.append(Task(name: name))
        tableView.reloadData()
    }
    
    func changeButton(checked: Bool, index: Int) {
        <#code#>
    }
    
}

