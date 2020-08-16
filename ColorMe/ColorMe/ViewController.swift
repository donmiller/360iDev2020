//
//  ViewController.swift
//  ColorMe
//
//  Created by Don Miller on 8/16/20.
//  Copyright © 2020 GroundSpeed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var btnGreen: UIButton!
    @IBOutlet weak var btnRed: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblMessage.text = ""
    }

    @IBAction func displayGreen(sender: AnyObject) {
        lblMessage.text = "You wanted green"
        self.view.backgroundColor = UIColor.green
    }

    @IBAction func displayRed(sender: AnyObject) {
        lblMessage.text = "You wanted red"
        self.view.backgroundColor = UIColor.red
    }

}

