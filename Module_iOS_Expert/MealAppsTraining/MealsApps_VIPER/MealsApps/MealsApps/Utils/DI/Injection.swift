//
//  Injection.swift
//  MealsApps
//
//  Created by Kelvin HT on 12/5/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

final class Injection: NSObject {
    private func provideRepository() -> MealRepositoryProtocol {
      let remote: MealDataSource = MealDataSource.sharedInstance
      return MealRepository.sharedInstance(remote)
    }

    func provideMeal() -> MealUseCaseProtocol {
      let repository = provideRepository()
      return MealInteractor(repository: repository)
    }
    
    func provideMealDetail(category: CategoryModel) -> MealDetailUseCaseProtocol {
      let repository = provideRepository()
      return MealDetailsInteractor(repository: repository, category: category)
    }
}
