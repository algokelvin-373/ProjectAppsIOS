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
}
