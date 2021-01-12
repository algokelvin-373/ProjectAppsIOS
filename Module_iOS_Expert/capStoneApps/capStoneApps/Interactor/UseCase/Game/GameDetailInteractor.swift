//
//  GameDetailInteractor.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/12/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import Foundation

class GameDetailInteractor: GameDetailProtocol {
    private let repository: GameRepository
    private let category: GameModel

    required init(repository: GameRepository, category: GameModel) {
      self.repository = repository
      self.category = category
    }

    func getDetailGame() -> GameModel {
        return category
    }
}
