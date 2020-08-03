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

struct DetailGames: Codable, Identifiable {
    let id: Int
    let name: String
    let background_image: String
    let released: String
    let rating: Float
    let description_raw: String
}

struct Platforms: Codable, Identifiable {
    let id = UUID()
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

/**Dummy Detail Game**/
var dummyDetailGame = DetailGames(
    id: 3498,
    name: "Grand Theft Auto V",
    background_image: "No Image",
    released: "0",
    rating: 3.3,
    description_raw: "Default"
)
