//
//  ConstantFunction.swift
//  GameCatalog
//
//  Created by Kelvin HT on 10/9/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

func convertFormatDate(stringDate: String) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MMM, d yyyy"
    let d = dateFormatter.date(from: stringDate) ?? nil
    return dateFormatter.string(from: d!)
}
