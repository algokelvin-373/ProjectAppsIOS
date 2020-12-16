//
//  MovieEntity.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/15/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

struct DataMovies: Decodable {
    let results: [Movies]
}

struct Movies: Decodable {
    private enum CodingKeys: String, CodingKey {
        case idMovie = "id"
        case nameMovie = "original_title"
        case backgroundImageMovie = "poster_path"
        case releasedMovie = "release_date"
        case ratingMovie = "vote_average"
    }

    let idMovie: Int?
    let nameMovie: String?
    let backgroundImageMovie: String?
    let releasedMovie: String?
    let ratingMovie: Float?
}

struct MovieModel: Equatable, Identifiable {
    let id: Int
    let name: String
    let backgroundImage: String
    let released: String
    let rating: Float
}
