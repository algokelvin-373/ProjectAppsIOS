//
//  MealDetailsPresenter.swift
//  MealsApps
//
//  Created by Kelvin HT on 12/6/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

class MealDetailsPresenter: ObservableObject {
    private let detailUseCase: MealDetailUseCaseProtocol

    @Published var category: CategoryModel
    @Published var errorMessage: String = ""
    @Published var loadingState: Bool = false

    init(detailUseCase: MealDetailUseCaseProtocol) {
        self.detailUseCase = detailUseCase
        category = detailUseCase.getCategory()
    }
}
