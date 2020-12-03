//
//  MealModel.swift
//  MealsApps
//
//  Created by Kelvin HT on 12/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

struct CategoryModel: Equatable, Identifiable {
  let id: String
  let title: String
  let image: String
  let description: String
}
