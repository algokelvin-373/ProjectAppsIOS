//
//  MealRouter.swift
//  MealsApps
//
//  Created by Kelvin HT on 12/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

class MealRouter {
    func makeDetailView(for category: CategoryModel) -> some View {
      let detailUseCase = Injection.init().provideMealDetail(category: category)
      let presenter = MealDetailsPresenter(detailUseCase: detailUseCase)
      return MealDetailView(presenter: presenter)
    }
}
