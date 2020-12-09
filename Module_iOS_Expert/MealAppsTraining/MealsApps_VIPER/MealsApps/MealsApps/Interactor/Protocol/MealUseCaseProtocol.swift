//
//  MealUseCaseProtocol.swift
//  MealsApps
//
//  Created by Kelvin HT on 12/4/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

protocol MealUseCaseProtocol {
  func getCategories(completion: @escaping (Result<[CategoryModel], Error>) -> Void)
}
