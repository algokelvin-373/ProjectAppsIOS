//
//  MealPresenter.swift
//  MealsApps
//
//  Created by Gilang Ramadhan on 14/08/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import Foundation
import Combine

class MealPresenter: ObservableObject {

  private var cancellables: Set<AnyCancellable> = []
  private let mealUseCase: MealUseCase

  @Published var meal: MealModel
  @Published var errorMessage: String = ""
  @Published var isLoading: Bool = false
  @Published var isError: Bool = false

  init(mealUseCase: MealUseCase) {
    self.mealUseCase = mealUseCase
    meal = mealUseCase.getMeal()
  }

  func getMeal() {
    isLoading = true
    mealUseCase.getMeal()
      .receive(on: RunLoop.main)
      .sink(receiveCompletion: { completion in
          switch completion {
          case .failure (let error):
            self.errorMessage = error.localizedDescription
            self.isError = true
            self.isLoading = false
          case .finished:
            self.isLoading = false
          }
        }, receiveValue: { meal in
          self.meal = meal
        })
        .store(in: &cancellables)
  }

  func updateFavoriteMeal() {
    mealUseCase.updateFavoriteMeal()
      .receive(on: RunLoop.main)
      .sink(receiveCompletion: { completion in
          switch completion {
          case .failure:
            self.errorMessage = String(describing: completion)
          case .finished:
            self.isLoading = false
          }
        }, receiveValue: { meal in
          self.meal = meal
        })
        .store(in: &cancellables)
  }

}
