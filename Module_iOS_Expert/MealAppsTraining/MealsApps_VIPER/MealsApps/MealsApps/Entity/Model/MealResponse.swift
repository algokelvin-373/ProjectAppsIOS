//
//  MealResponse.swift
//  MealsApps
//
//  Created by Kelvin HT on 12/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

struct MealResponse: Decodable {
  let meals: [Meals]
}

struct Meals: Decodable {
  private enum CodingKeys: String, CodingKey {
    case idMeal = "idCategory"
    case titleMeal = "strCategory"
    case imageMeal = "strCategoryThumb"
    case descriptionMeal = "strCategoryDescription"
  }

  let idMeal: String?
  let titleMeal: String?
  let imageMeal: String?
  let descriptionMeal: String?
}
