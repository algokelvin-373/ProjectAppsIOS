//
//  TravelDetailInteractor.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/12/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import Foundation

class TravelDetailInteractor: TravelDetailProtocol {
    private let repository: TravelRepository
    private let category: TravelModel

    required init(repository: TravelRepository, category: TravelModel) {
      self.repository = repository
      self.category = category
    }

    func getDetailTravel() -> TravelModel {
        return category
    }
}
