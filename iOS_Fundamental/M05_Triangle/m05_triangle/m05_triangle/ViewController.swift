//
//  ViewController.swift
//  m05_triangle
//
//  Created by Kelvin HT on 4/15/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleApps: UILabel!
    @IBOutlet weak var tvResult: UILabel!
    @IBOutlet weak var btnCalculate: UIButton!
    @IBOutlet weak var btnReset: UIButton!
    @IBOutlet weak var inputWidth: UITextField!
    @IBOutlet weak var inputHeight: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set styles
        let boldStyle = [
            NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 25.0)!
        ]
        
        titleApps.attributedText = NSAttributedString(string: titleApps.text ?? "empty text", attributes: boldStyle)
        tvResult.attributedText = NSAttributedString(string: tvResult.text ?? "empty text", attributes: boldStyle)
    }

    @IBAction func calculateTriangle(_ sender: Any) {
        let h = Double(inputHeight.text ?? "0") ?? 0.0
        let w = Double(inputWidth.text ?? "0") ?? 0.0
        let result = (h * w)/2
        print(result)
        tvResult.text = "Result : \(result)"
    }
    
    @IBAction func resetResult(_ sender: Any) {
        inputWidth.text = ""
        inputHeight.text = ""
        tvResult.text = "Result : 0"
    }
}

