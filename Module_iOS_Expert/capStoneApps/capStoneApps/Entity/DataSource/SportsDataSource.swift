//
//  SportsDataSource.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/22/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

protocol SportDataSourceProtocol: class {
  func getSport(result: @escaping (Result<[Sports], URLError>) -> Void)
}

final class SportDataSource: NSObject {
    private override init() { }

    static let sharedInstance: SportDataSource =  SportDataSource()
}

extension SportDataSource: SportDataSourceProtocol {
    func getSport(result: @escaping (Result<[Sports], URLError>) -> Void) {
        guard let url = URL(string: SportEndpoints.Gets.sport.url) else { return }

        let task = URLSession.shared.dataTask(with: url) { maybeData, maybeResponse, maybeError in
          if maybeError != nil {
              result(.failure(.addressUnreachable(url)))
          } else if let data = maybeData, let response = maybeResponse as? HTTPURLResponse, response.statusCode == 200 {
              let decoder = JSONDecoder()
              do {
                let categories = try decoder.decode(DataSports.self, from: data).sports
                  result(.success(categories))
              } catch {
                result(.failure(.invalidResponse))
              }
          }
        }
        task.resume()
    }
}
