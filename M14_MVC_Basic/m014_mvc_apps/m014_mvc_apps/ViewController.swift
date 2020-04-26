//
//  ViewController.swift
//  m014_mvc_apps
//
//  Created by Kelvin HT on 4/25/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UILabel!
    @IBOutlet weak var txtJob: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Call person and set data
        let person = Person()
        person.name = "Kelvin Herwanda Tandrio"
        person.job = "Android Developer"
        
        // Get data person to View Label
        txtName.text = person.name
        txtJob.text = person.job
        
    }
}
