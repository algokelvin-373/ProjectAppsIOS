//
//  ProgrammingLanguageTableViewCell.swift
//  m13_dynamic_tableview
//
//  Created by Kelvin HT on 5/1/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import UIKit

class ProgrammingLanguageTableViewCell: UITableViewCell {

    @IBOutlet weak var imageLanguageProgramming: UIImageView!
    @IBOutlet weak var titleLanguageProgramming: UILabel!
    @IBOutlet weak var descriptionLanguageProgramming: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
