//
//  ViewController.swift
//  m04_hello_world
//
//  Created by Kelvin HT on 4/14/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tvSay: UILabel!
    @IBOutlet weak var tvNameDeveloper: UILabel!
    @IBOutlet weak var btnClickHere: UIButton!
    @IBOutlet weak var tvAmountClick: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        /** Make Programmatically Set Text 'tvSay' */
        tvSay.text = "I'm ready to learn iOS Programming Beginner" // Set text 'tvSay'
        print(tvSay ?? "empty text") // Print in Output Layer
        
        /** Make style Bold for text 'tvNameDeveloper' */
        let boldAttribute = [
           NSAttributedString.Key.font: UIFont(
            name: "HelveticaNeue-Bold",
            size: 20.0)!
        ] // Set style text
        let toBoldText = NSAttributedString(string: tvNameDeveloper.text ?? "empty text", attributes: boldAttribute)
        tvNameDeveloper.attributedText = toBoldText
    }
    
    var amountClick = 0;
    
    /** Make Action for Button 'btnClickHere' */
    @IBAction func clickButtonAction(_ sender: UIButton) {
        amountClick += 1
        let message = "You click \(amountClick) times"
        tvAmountClick.text = message
    }
    
}
