//
//  GameDataSource.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/11/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import Alamofire

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

        AF.request(url).validate().responseDecodable(of: DataGame.self) { response in
            switch response.result {
            case .success(let value):
                result(.success(value.results))
            case .failure:
                result(.failure(.invalidResponse))
            }
        }
    }
}
