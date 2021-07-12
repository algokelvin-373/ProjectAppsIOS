//
//  ChildViewController.swift
//  m06_containers_view
//
//  Created by Kelvin HT on 4/15/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController {
    
    @IBOutlet weak var labelChild: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelChild.text = "Hello, Child AlgoKelvin"
    }
}
