//
//  ViewController.swift
//  m07_storyboard_segues_transation
//
//  Created by Kelvin HT on 4/16/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToHome(_ sender: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func moveToRedPage(_ sender: Any) {
        performSegue(withIdentifier: "goToRedPage", sender: sender)
    }
}
