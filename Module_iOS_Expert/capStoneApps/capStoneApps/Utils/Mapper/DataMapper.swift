//
//  DataMapper.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/11/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

final class DataMapper {
    static func mapGameResponsesToDomains(input gameResponses: [Games]) -> [GameModel] {
        return gameResponses.map { result in
            return GameModel(
                id: result.idGame ?? 0,
                name: result.nameGame ?? "Unknow",
                backgroundImage: result.backgroundImageGame ?? "Unknow",
                released: result.releasedGame ?? "Unknow",
                rating: result.ratingGame ?? 0.0
            )
        }
    }

    static func mapMovieResponsesToDomains(input movieResponses: [Movies]) -> [MovieModel] {
        return movieResponses.map { result in
            return MovieModel(
                id: result.idMovie ?? 0,
                name: result.nameMovie ?? "Unknow",
                backgroundImage: result.backgroundImageMovie ?? "Unknow",
                released: result.releasedMovie ?? "Unknow",
                rating: result.ratingMovie ?? 0.0
            )
        }
    }

    static func mapTravelResponsesToDomains(input travelResponses: [Travels]) -> [TravelModel] {
        return travelResponses.map { result in
            return TravelModel(
                id: result.id ,
                name: result.name ,
                image: result.image ,
                address: result.address ,
                like: result.like
            )
        }
    }
    
    static func mapSportResponsesToDomains(input sportResponses: [Sports]) -> [SportModel] {
        return sportResponses.map { result in
            return SportModel(
                id: result.idSport ?? "0",
                name: result.nameSport ?? "Unknown",
                backgroundImage: result.backgroundImageSport ?? "Unknown",
                description: result.descriptionSport ?? "Unknown")
        }
    }
}
