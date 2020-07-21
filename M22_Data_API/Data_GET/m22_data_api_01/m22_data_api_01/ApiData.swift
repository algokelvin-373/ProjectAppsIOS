//
//  ApiData.swift
//  m22_data_api_01
//
//  Created by Kelvin HT on 7/21/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

let url = "https://api.rawg.io/api/games"

struct DataGame: Codable {
    let results: Array<Game>
}

struct Game: Codable {
    let name: String
}
