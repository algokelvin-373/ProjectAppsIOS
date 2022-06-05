//
//  ViewController.swift
//  m003_hello_world_special_1
//
//  Created by Kelvin HT on 6/5/22.
//  Copyright © 2022 Kelvin HT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloName: UILabel?
    @IBOutlet weak var btnClick: UIButton?
    @IBOutlet weak var tvAmountClick: UILabel?
    
    var amountClick = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        helloName?.text = "Hello, Kelvin"
    }
    
    /** Make Action for Button 'btnClickHere' */
    @IBAction func clickBtnAction(_ sender: Any) {
        amountClick += 1
        let message = "You click \(amountClick) times"
        tvAmountClick?.text = message
    }

}

