//
//  ModelDataGames.swift
//  GameCatalog
//
//  Created by Kelvin HT on 7/24/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

/* Data Item Game **/
struct DataGame: Codable {
    let results: [Games]
}

struct Games: Codable {
    let id: Int
    let name: String
    let background_image: String
    let rating: Double
    let parent_platforms: [Platforms]
    let genres: [Genres]
}

struct Platforms: Codable {
    let platform: DataPlatforms
}

struct DataPlatforms: Codable {
    let id: Int
    let name: String
    let slug: String
}

struct Genres: Codable {
    let id: Int
    let name: String
}
