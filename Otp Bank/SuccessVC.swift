//
//  SuccessVC.swift
//  Otp Bank
//
//  Created by Wissa Azmy on 10/20/18.
//  Copyright © 2018 Wissa Azmy. All rights reserved.
//

import UIKit

class SuccessVC: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
         Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(moveOn), userInfo: nil, repeats: false)
        
        
    }
    
    @objc private func moveOn() {
        dismiss(animated: true, completion: nil)
    }
    
    

}
