//
//  ViewController.swift
//  ProfileApps
//
//  Created by Kelvin HT on 4/27/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textAbout: UILabel!
    @IBOutlet weak var textLongDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let profile = getDataProfile()
        
        textAbout.text = profile.name

        textLongDescription.text = profile.long_description
        
    }
}

