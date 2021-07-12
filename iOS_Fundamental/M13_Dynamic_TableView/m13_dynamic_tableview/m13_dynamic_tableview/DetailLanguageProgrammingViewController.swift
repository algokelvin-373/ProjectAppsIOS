//
//  DetailLanguageProgrammingViewController.swift
//  m13_dynamic_tableview
//
//  Created by Kelvin HT on 5/1/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import UIKit

class DetailLanguageProgrammingViewController: UIViewController {

    
    
    @IBOutlet weak var titleDetailLanguageProgramming: UILabel!
    @IBOutlet weak var imageDetailLanguageProgramming: UIImageView!
    @IBOutlet weak var descriptionDetailLanguageProgramming: UILabel!
    
    var language_programming: LanguageProgramming?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let result = language_programming {
            titleDetailLanguageProgramming.text = result.title
            imageDetailLanguageProgramming.image = result.image
            descriptionDetailLanguageProgramming.text = result.description
        }
    }

}
