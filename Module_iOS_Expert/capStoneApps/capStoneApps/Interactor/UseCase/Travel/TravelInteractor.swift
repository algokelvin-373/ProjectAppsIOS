//
//  TravelInteractor.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/22/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

class TravelInteractor: TravelProtocol {
    private let movieRepository: MovieRepositoryProtocol

    required init(repository: MovieRepositoryProtocol) {
      self.movieRepository = repository
    }

    func getMovie(completion: @escaping (Result<[MovieModel], Error>) -> Void) {
        movieRepository.getMovie { result in
            completion(result)
        }
    }
}
