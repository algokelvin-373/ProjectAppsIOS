//
//  DataLocaleMapper.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/15/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import Foundation

final class DataLocaleMapper {
    static func mapGameToModel(input gameResponses: [GameEntity]) -> [GameModel] {
        return gameResponses.map { result in
            return GameModel(
                id: result.id,
                name: result.name,
                image: result.image,
                released: result.released,
                rating: result.rating
            )
        }
    }
    static func mapGameToEntity(input gameModel: GameModel) -> GameEntity {
        let gameEntity = GameEntity()
        gameEntity.id = gameModel.id
        gameEntity.name = gameModel.name
        gameEntity.image = gameModel.image
        gameEntity.released = gameModel.released
        gameEntity.rating = gameModel.rating
        return gameEntity
    }
    
    static func mapMovieToModel(input movieResponses: [MovieEntity]) -> [MovieModel] {
        return movieResponses.map { result in
            return MovieModel(
                id: result.id,
                name: result.name,
                image: result.image,
                descript: result.descript,
                released: result.released,
                rating: result.rating)
        }
    }
    static func mapMovieToEntity(input movieModel: MovieModel) -> MovieEntity {
        let movieEntity = MovieEntity()
        movieEntity.id = movieModel.id
        movieEntity.name = movieModel.name
        movieEntity.image = movieModel.image
        movieEntity.descript = movieModel.descript
        movieEntity.released = movieModel.released
        movieEntity.rating = movieModel.rating
        return movieEntity
    }
}
