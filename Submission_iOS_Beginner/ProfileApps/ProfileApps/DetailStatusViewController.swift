//
//  DetailStatusViewController.swift
//  ProfileApps
//
//  Created by Kelvin HT on 5/6/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import UIKit

class DetailStatusViewController: UIViewController {

    var statusPhotos: StatusPhotos?
    
    @IBOutlet weak var titleStatus: UILabel!
    @IBOutlet weak var imageStatus: UIImageView!
    @IBOutlet weak var descriptionStatus: UILabel!
    @IBOutlet weak var likeStatus: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let result = statusPhotos {
            titleStatus.text = result.title
            imageStatus.image = result.image
            likeStatus.text = "\(result.likes) likes"
            descriptionStatus.text = result.status
        }
    }
}
