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

struct Games: Codable, Identifiable {
    let id: Int
    let name: String
    let background_image: String
    let released: String
    let rating: Float
    let parent_platforms: [Platforms]
    let genres: [Genres]
}

struct Platforms: Codable {
    let platform: DataPlatforms
}

struct DataPlatforms: Codable, Identifiable {
    let id: Int
    let name: String
    let slug: String
}

struct Genres: Codable, Identifiable {
    let id: Int
    let name: String
}
