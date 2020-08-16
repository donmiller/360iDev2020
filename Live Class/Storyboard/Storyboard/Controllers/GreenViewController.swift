//
//  GreenViewController.swift
//  Storyboard
//
//  Created by Don Miller on 8/16/20.
//  Copyright © 2020 GroundSpeed. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func exitModal(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
