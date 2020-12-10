//
//  GameInteractor.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/10/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

class GameInteractor: GameProtocol {

    private let gameRepository: GameProtocol

    required init(repository: GameProtocol) {
      self.gameRepository = repository
    }

    func getGame(completion: @escaping (Result<[Games], URLError>) -> Void) {
        gameRepository.getGame { result in
            completion(result)
        }
    }
}
