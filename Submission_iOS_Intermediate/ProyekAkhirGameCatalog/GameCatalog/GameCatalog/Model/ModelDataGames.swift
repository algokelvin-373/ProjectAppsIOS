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
    background_image: "https://media.rawg.io/media/games/84d/84da2ac3fdfc6507807a1808595afb12.jpg",
    released: "0",
    rating: 3.3,
    description_raw: "Default"
)

/*For Model Search Game**/
struct SearchGame: Codable {
    let results: [GameSearch]
}

struct GameSearch: Codable, Identifiable {
    let id: Int
    let name: String
    let background_image: String
    let released: String?
}
