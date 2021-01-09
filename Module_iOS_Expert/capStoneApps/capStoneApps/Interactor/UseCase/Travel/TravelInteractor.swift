//
//  TravelInteractor.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/22/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

class TravelInteractor: TravelProtocol {
    private let travelRepository: TravelRepositoryProtocol

    required init(repository: TravelRepositoryProtocol) {
      self.travelRepository = repository
    }

    func getTravel(completion: @escaping (Result<[TravelModel], Error>) -> Void) {
        travelRepository.getTravel { result in
            completion(result)
        }
    }
}
