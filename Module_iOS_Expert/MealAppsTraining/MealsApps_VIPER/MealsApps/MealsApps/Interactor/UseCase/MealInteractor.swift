//
//  MealInteractor.swift
//  MealsApps
//
//  Created by Kelvin HT on 12/4/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

class MealInteractor: MealUseCaseProtocol {
    private let repository: MealRepositoryProtocol

    required init(repository: MealRepositoryProtocol) {
      self.repository = repository
    }

    func getCategories(completion: @escaping (Result<[CategoryModel], Error>) -> Void) {
        repository.getCategories { result in
            completion(result)
        }
    }
}
