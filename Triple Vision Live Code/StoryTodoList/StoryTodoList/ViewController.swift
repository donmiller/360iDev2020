//
//  ViewController.swift
//  StoryTodoList
//
//  Created by Don Miller on 8/18/20.
//  Copyright © 2020 GroundSpeed. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var _tableView:UITableView!
    var todoList = ["Task 1", "Task 2", "Task 3", "Task 4", "Task 5", "Task 6", ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let nib = UINib.init(nibName: "CustomTableViewCell", bundle: nil)
        _tableView.register(nib, forCellReuseIdentifier: "CustomTableViewCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as! CustomTableViewCell
        cell.lblTaskName.text = todoList[indexPath.row]
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowTask" {
            let vc = segue.destination as! DetailViewController
            vc._taskName = todoList[_tableView.indexPathForSelectedRow!.row]
        }
    }

}

