//
//  MealDetailsInteractor.swift
//  MealsApps
//
//  Created by Kelvin HT on 12/6/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

class MealDetailsInteractor: MealDetailUseCaseProtocol {

  private let repository: MealRepositoryProtocol
  private let category: CategoryModel

  required init(repository: MealRepositoryProtocol,category: CategoryModel) {
    self.repository = repository
    self.category = category
  }

  func getCategory() -> CategoryModel {
    return category
  }
}
