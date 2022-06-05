//
//  ViewController.swift
//  m001_hello_world_1
//
//  Created by Kelvin HT on 6/5/22.
//  Copyright © 2022 Kelvin HT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tvSay: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set text 'tvSay'
        tvSay?.text = "I'm ready to learn iOS Developer"
        
    }

}

