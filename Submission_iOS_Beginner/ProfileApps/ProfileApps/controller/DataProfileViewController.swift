//
//  DataProfileViewController.swift
//  ProfileApps
//
//  Created by Kelvin HT on 5/9/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import UIKit

class DataProfileViewController: UIViewController {

    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var titleEmail: UILabel!
    @IBOutlet weak var titleDateBirth: UILabel!
    @IBOutlet weak var titleAddressHouse: UILabel!
    @IBOutlet weak var titleAddress: UILabel!
    @IBOutlet weak var titleShortDescription: UILabel!
    @IBOutlet weak var amountPost: UILabel!
    @IBOutlet weak var amountFollowers: UILabel!
    @IBOutlet weak var amountFollow: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        let profile = getDataProfile()
        
        titleEmail.text = profile.email
        titleDateBirth.text = "\(profile.place_of_birth ?? "default"), \(profile.date_of_birth ?? "default")"
        titleAddressHouse.text = profile.address_house
        titleAddress.text = profile.address
        titleShortDescription.text = profile.short_description
        amountPost.text = profile.amountPost
        amountFollowers.text = profile.amountFollowers
        amountFollow.text = profile.amountFollow
    }
}
