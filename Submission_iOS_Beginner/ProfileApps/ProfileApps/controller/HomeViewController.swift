//
//  HomeViewController.swift
//  ProfileApps
//
//  Created by Kelvin HT on 5/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableStatusPhotos: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableStatusPhotos.dataSource = self
        tableStatusPhotos.register(
            UINib(nibName: "StatusPhotosViewCell", bundle: nil),
            forCellReuseIdentifier: "StatusPhotosCell"
        )
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        statusPhotos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "StatusPhotosCell", for: indexPath) as! StatusPhotosTableViewCell
        
        let status = statusPhotos[indexPath.row]
        cell.imageStatus.image = status.image
        cell.titleStatus.text = status.title
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
}
