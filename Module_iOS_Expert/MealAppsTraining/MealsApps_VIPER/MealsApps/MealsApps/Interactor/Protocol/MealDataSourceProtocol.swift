//
//  MealDataSourceProtocol.swift
//  MealsApps
//
//  Created by Kelvin HT on 12/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

protocol MealDataSourceProtocol: class {
  func getCategories(result: @escaping (Result<[CategoryResponse], URLError>) -> Void)
}
