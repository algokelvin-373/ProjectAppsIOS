//
//  MealPresenter.swift
//  MealsApps
//
//  Created by Kelvin HT on 12/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

class MealPresenter: ObservableObject {
    private let mealUseCase: MealUseCaseProtocol

    @Published var categories: [CategoryModel] = []
    @Published var errorMessage: String = ""
    @Published var loadingState: Bool = false
    
    init(mealUseCase: MealUseCaseProtocol) {
      self.mealUseCase = mealUseCase
    }
    
    func getCategories() {
        loadingState = true
        mealUseCase.getCategories { result in
            switch result {
            case .success(let categories):
              DispatchQueue.main.async {
                self.loadingState = false
                self.categories = categories
              }
            case .failure(let error):
              DispatchQueue.main.async {
                self.loadingState = false
                self.errorMessage = error.localizedDescription
              }
            }
        }
    }
}
