//
//  LoanApplicationVC.swift
//  Otp Bank
//
//  Created by Wissa Azmy on 10/20/18.
//  Copyright © 2018 Wissa Azmy. All rights reserved.
//

import UIKit

class LoanApplicationVC: UIViewController {
    
    @IBOutlet weak var interestValue: UILabel!
    @IBOutlet weak var payValue: UILabel!
    @IBOutlet weak var amountValue: UILabel!
    
    @IBOutlet weak var amountTxt: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setViewDefaults()
    }
    
    
    @IBAction func calcInterest(_ sender: UIButton) {
        if let amount = amountTxt.text, let floatAmount = Float(amount) {
            let interest = (floatAmount/100) * 6.6
            interestValue.text = "Interest: \(interest)"
            payValue.text = "Monthly payment: \(floatAmount/12)"
            amountValue.text = "Total amount: \(floatAmount + interest)"
            
        }
        
    }
    
    
    private func setViewDefaults() {
        interestValue.text = ""
        payValue.text = ""
        amountValue.text = ""
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
