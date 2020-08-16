//
//  TableViewController.swift
//  Payment
//
//  Created by Don Miller on 8/15/20.
//  Copyright © 2020 GroundSpeed. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet weak var lblFifteenYear: UILabel!
    @IBOutlet weak var lblFiveOneArm: UILabel!
    @IBOutlet weak var lblThirtyYear: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblThirtyYear.text = "3.75%"
        lblFifteenYear.text = "3.00%"
        lblFiveOneArm.text = "2.99%"
    }
}
