//
//  SportsDetailInteractor.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/8/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import Foundation

class SportsDetailInteractor: SportsDetailProtocol {
    private let repository: SportRepositoryProtocol
    private let category: SportModel

    required init(repository: SportRepositoryProtocol, category: SportModel) {
      self.repository = repository
      self.category = category
    }

    func getDetailSport() -> SportModel {
        return category
    }
}
