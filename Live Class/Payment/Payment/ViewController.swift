//
//  ViewController.swift
//  Payment
//
//  Created by Don Miller on 8/15/20.
//  Copyright © 2020 GroundSpeed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtAmount: UITextField!
    @IBOutlet weak var txtDownPayment: UITextField!
    @IBOutlet weak var txtInterestRate: UITextField!
    @IBOutlet weak var txtTerm: UITextField!
    @IBOutlet weak var lblPayment: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clear(self)
    }

    @IBAction func clear(_ sender: Any) {
        txtAmount.text = ""
        txtDownPayment.text = ""
        txtInterestRate.text = ""
        txtTerm.text = ""
        lblPayment.text = "0.00"
    }
    
    @IBAction func calculate(_ sender: Any) {
        getMonthlyPayment()
    }
    
    func getMonthlyPayment() {
        // A = payment Amount per period
        // P = initial Principal (loan amount)
        // r = interest rate per period
        // n = total number of payments or periods
        
        let principal : Float = Float(txtAmount.text!)! - Float(txtDownPayment.text!)!
        let payments = Float(txtTerm.text!)!*12
        let rate = Float(txtInterestRate.text!)!/12/100
        let amount = calculatPMTWithRatePerPeriod(ratePerPeriod: rate, numberOfPayments: payments, loanAmount: principal, futureValue: 0, type: 0)
        
        if (amount.isNaN || amount.isInfinite)
        {
            lblPayment.font = UIFont.boldSystemFont(ofSize: 18)
            lblPayment.textColor = UIColor.red
            lblPayment.text = "You must enter all required fields.";
        }
        else
        {
            lblPayment.font = UIFont(name: "Avenir Next", size: 28)
            lblPayment.textColor = UIColor.white
            lblPayment.text = String(format: "%.02f", amount)
        }
        
    }
    
    func calculatPMTWithRatePerPeriod (ratePerPeriod: Float, numberOfPayments: Float, loanAmount: Float, futureValue: Float, type: Float) -> Float {
        
        var q : Float
        
        q = pow(1 + ratePerPeriod, numberOfPayments)
        
        let returnValue = (ratePerPeriod * (futureValue + (q * loanAmount))) / ((-1 + q) * (1 + ratePerPeriod * (type)))
        
        return returnValue

    }

}

