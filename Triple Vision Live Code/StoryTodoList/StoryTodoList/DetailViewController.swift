//
//  DetailViewController.swift
//  StoryTodoList
//
//  Created by Don Miller on 8/18/20.
//  Copyright © 2020 GroundSpeed. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!
    var _taskName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        taskLabel.text = _taskName
    }
    
}
