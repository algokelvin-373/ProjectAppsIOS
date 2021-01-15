//
//  GameDetailInteractor.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/12/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import Foundation

class GameDetailInteractor: GameDetailProtocol {
    private let gameLocaleRepository: GameLocaleRepositoryProtocol
    private let repository: GameRepositoryProtocol
    private let category: GameModel

    required init(
        repository: GameRepositoryProtocol,
        repositoryLocale: GameLocaleRepositoryProtocol,
        category: GameModel
    ) {
        self.repository = repository
        self.category = category
        self.gameLocaleRepository = repositoryLocale
    }

    func getDetailGame() -> GameModel {
        return category
    }

    func addGameFavorite(game: GameEntity) {
        gameLocaleRepository.addLocaleGame(from: game) { _ in
            print("Add Game Favorite")
        }
    }

    func checkFavoriteGame(game: GameEntity) -> Bool {
        return gameLocaleRepository.checkLocaleGame(from: game)
    }
}
