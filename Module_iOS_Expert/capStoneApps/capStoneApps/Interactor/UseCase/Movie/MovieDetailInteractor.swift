//
//  MovieDetailInteractor.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/12/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import Foundation

class MovieDetailInteractor: MovieDetailProtocol {
    private let repository: MovieRepository
    private let category: MovieModel

    required init(repository: MovieRepository, category: MovieModel) {
      self.repository = repository
      self.category = category
    }

    func getDetailMovie() -> MovieModel {
        return category
    }
}
