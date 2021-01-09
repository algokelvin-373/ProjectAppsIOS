//
//  MovieDataSource.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/15/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

protocol MovieDataSourceProtocol: class {
  func getMovie(result: @escaping (Result<[Movies], URLError>) -> Void)
}

final class MovieDataSource: NSObject {
    private override init() { }

    static let sharedInstance: MovieDataSource =  MovieDataSource()
}

extension MovieDataSource: MovieDataSourceProtocol {
    func getMovie(result: @escaping (Result<[Movies], URLError>) -> Void) {
        guard let url = URL(string: MovieEndpoints.Gets.nowPlaying.url) else { return }

        let task = URLSession.shared.dataTask(with: url) { maybeData, maybeResponse, maybeError in
          if maybeError != nil {
              result(.failure(.addressUnreachable(url)))
          } else if let data = maybeData, let response = maybeResponse as? HTTPURLResponse, response.statusCode == 200 {
              let decoder = JSONDecoder()
              do {
                let categories = try decoder.decode(DataMovies.self, from: data).results
                  result(.success(categories))
              } catch {
                result(.failure(.invalidResponse))
              }
          }
        }
        task.resume()
    }
}
