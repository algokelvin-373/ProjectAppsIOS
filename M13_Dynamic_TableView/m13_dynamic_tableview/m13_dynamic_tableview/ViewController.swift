//
//  ViewController.swift
//  m13_dynamic_tableview
//
//  Created by Kelvin HT on 5/1/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableLanguageProgramming: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Menghubungkan tableViewLP dengan ke dua metode di bawah
        tableLanguageProgramming.dataSource = self
        
        tableLanguageProgramming.register(
            UINib(
                nibName: "ProgrammingLanguageTableViewCell",
                bundle: nil
            ),
            forCellReuseIdentifier: "LanguageProgrammingCell"
        )
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return languageProgramming.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "LanguageProgrammingCell", for: indexPath) as! ProgrammingLanguageTableViewCell
        
        // Set data LanguageProgramming to cell TableView
        let lp = languageProgramming[indexPath.row]
        cell.imageLanguageProgramming.image = lp.image
        cell.titleLanguageProgramming.text = lp.title
        cell.descriptionLanguageProgramming.text = lp.description
        
        return cell
    }
}

