//
//  MovieRepository.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/15/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

protocol MovieRepositoryProtocol {
    func getMovie(result: @escaping (Result<[MovieModel], Error>) -> Void)
}

final class MovieRepository: NSObject {
    typealias MovieInstance = (MovieDataSource) -> MovieRepository

    fileprivate let remote: MovieDataSource

    private init(remote: MovieDataSource) {
        self.remote = remote
    }

    static let sharedInstance: MovieInstance = { remoteRepo in
        return MovieRepository(remote: remoteRepo)
    }
}

extension MovieRepository: MovieRepositoryProtocol {
    func getMovie(result: @escaping (Result<[MovieModel], Error>) -> Void) {
        self.remote.getMovie { remoteResponses in
            switch remoteResponses {
            case .success(let movieResponses):
              let resultList = DataMapper.mapMovieResponsesToDomains(input: movieResponses)
              result(.success(resultList))
            case .failure(let error):
              result(.failure(error))
            }
        }
    }
}
