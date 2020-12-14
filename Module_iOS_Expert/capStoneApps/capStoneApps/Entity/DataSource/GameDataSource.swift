//
//  GameDataSource.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/11/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

protocol GameDataSourceProtocol: class {
  func getGame(result: @escaping (Result<[Games], URLError>) -> Void)
}

final class GameDataSource: NSObject {
    private override init() { }

    static let sharedInstance: GameDataSource =  GameDataSource()
}

extension GameDataSource: GameDataSourceProtocol {
    func getGame(result: @escaping (Result<[Games], URLError>) -> Void) {
        guard let url = URL(string: GameEndpoints.Gets.games.url) else { return }

        let task = URLSession.shared.dataTask(with: url) { maybeData, maybeResponse, maybeError in
          if maybeError != nil {
              result(.failure(.addressUnreachable(url)))
          } else if let data = maybeData, let response = maybeResponse as? HTTPURLResponse, response.statusCode == 200 {
              let decoder = JSONDecoder()
              do {
                let categories = try decoder.decode(DataGame.self, from: data).results
                  result(.success(categories))
              } catch {
                result(.failure(.invalidResponse))
              }
          }
        }
        task.resume()
    }
}