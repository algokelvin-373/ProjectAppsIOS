//
//  MealRepository.swift
//  MealsApps
//
//  Created by Kelvin HT on 12/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

final class MealRepository: NSObject {
    typealias MealInstance = (MealDataSource) -> MealRepository

    fileprivate let remote: MealDataSource

    private init(remote: MealDataSource) {
        self.remote = remote
    }

    static let sharedInstance: MealInstance = { remoteRepo in
        return MealRepository(remote: remoteRepo)
    }
}

extension MealRepository: MealRepositoryProtocol {
    func getCategories(result: @escaping (Result<[CategoryModel], Error>) -> Void) {
        self.remote.getCategories { remoteResponses in
          switch remoteResponses {
          case .success(let categoryResponses):
            let resultList = CategoryMapper.mapCategoryResponsesToDomains(input: categoryResponses)
            result(.success(resultList))
          case .failure(let error):
            result(.failure(error))
          }
        }
    }
}
