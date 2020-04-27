//
//  ViewController.swift
//  ProfileApps
//
//  Created by Kelvin HT on 4/27/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textShortDescription: UILabel!
    @IBOutlet weak var textLongDescription: UILabel!
    @IBOutlet weak var textAbout: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let profile = getDataProfile()
        
        textAbout.text = profile.name
        textAbout.attributedText = NSAttributedString(
            string: textAbout.text ?? "empty_text",
            attributes: setBoldText(sizeFont: 20.0)
        )
        
        textLongDescription.text = profile.long_description
        textShortDescription.text = profile.short_description
        
    }
}

