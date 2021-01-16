//
//  GameDetailProtocol.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/12/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import Foundation

protocol GameDetailProtocol {
    func getDetailGame() -> GameModel
    func addGameFavorite(game: GameEntity)
    func checkFavoriteGame(game: GameEntity) -> Bool
    func deleteGameFavorite(game: GameEntity)
}
