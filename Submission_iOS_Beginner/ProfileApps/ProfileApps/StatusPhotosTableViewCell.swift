//
//  StatusPhotosTableViewCell.swift
//  ProfileApps
//
//  Created by Kelvin HT on 5/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import UIKit

class StatusPhotosTableViewCell: UITableViewCell {

    @IBOutlet weak var imageStatus: UIImageView!
    @IBOutlet weak var titleStatus: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
