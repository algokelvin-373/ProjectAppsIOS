//
//  GameEntity.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/10/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

struct DataGame: Decodable {
    let results: [Games]
}

struct Games: Decodable {
    private enum CodingKeys: String, CodingKey {
        case idGame = "id"
        case nameGame = "name"
        case backgroundImageGame = "background_image"
        case releasedGame = "released"
        case ratingGame = "rating"
    }

    let idGame: Int?
    let nameGame: String?
    let backgroundImageGame: String?
    let releasedGame: String?
    let ratingGame: Float?
}

struct GameModel: Equatable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let released: String
    let rating: Float
}
