//
//  GameFavoriteInteractor.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/15/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import Foundation

class GameFavoriteInteractor: GameFavoriteProtocol {
    private let gameLocaleRepository: GameLocaleRepositoryProtocol

    required init(repository: GameLocaleRepositoryProtocol) {
      self.gameLocaleRepository = repository
    }

    func getGameFavorite(completion: @escaping (Result<[GameModel], Error>) -> Void) {
        gameLocaleRepository.getLocaleGame { result in
            completion(result)
        }
    }
}
