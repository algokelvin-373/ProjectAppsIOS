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
        tableStatusPhotos.delegate = self
        tableStatusPhotos.register(
            UINib(nibName: "StatusPhotosTableViewCell", bundle: nil),
            forCellReuseIdentifier: "StatusPhotosCell"
        )
    }
}

extension HomeViewController: UITableViewDataSource {
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

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = DetailStatusViewController(
            nibName: "DetailStatusViewController",
            bundle: nil
        )
        detail.statusPhotos = statusPhotos[indexPath.row]
        self.navigationController?.pushViewController(detail, animated: true)
    }
}
