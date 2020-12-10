//
//  API.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/11/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

struct API {
    static let baseUrlGame = "https://api.rawg.io/api/"
}

protocol Endpoint {
    var url: String { get }
}
