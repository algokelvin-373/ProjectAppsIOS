//
//  MealDataSource.swift
//  MealsApps
//
//  Created by Kelvin HT on 12/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

final class MealDataSource: NSObject {
  private override init() { }

  static let sharedInstance: MealDataSource =  MealDataSource()
}

extension MealDataSource: MealDataSourceProtocol {
    func getCategories(result: @escaping (Result<[CategoryResponse], URLError>) -> Void) {
      guard let url = URL(string: Endpoints.Gets.categories.url) else { return }

      let task = URLSession.shared.dataTask(with: url) { maybeData, maybeResponse, maybeError in
        if maybeError != nil {
            result(.failure(.addressUnreachable(url)))
        } else if let data = maybeData, let response = maybeResponse as? HTTPURLResponse, response.statusCode == 200 {
            let decoder = JSONDecoder()
            do {
                let categories = try decoder.decode(CategoriesResponse.self, from: data).categories
                result(.success(categories))
            } catch {
              result(.failure(.invalidResponse))
            }
        }
      }
      task.resume()
    }
}
