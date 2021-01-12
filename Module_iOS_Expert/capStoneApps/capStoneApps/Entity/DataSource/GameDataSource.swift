//
//  GameDataSource.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/11/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import Alamofire
import Combine

protocol GameDataSourceProtocol: class {
    func getGame() -> AnyPublisher<[Games], URLError>
}

final class GameDataSource: NSObject {
    private override init() { }

    static let sharedInstance: GameDataSource =  GameDataSource()
}

extension GameDataSource: GameDataSourceProtocol {
    func getGame() -> AnyPublisher<[Games], URLError> {
        return Future<[Games], URLError> { completion in
            if let url = URL(string: GameEndpoints.Gets.games.url) {
                AF.request(url).validate().responseDecodable(of: DataGame.self) { response in
                    switch response.result {
                    case .success(let value):
                        completion(.success(value.results))
                    case .failure:
                        completion(.failure(.invalidResponse))
                    }
                }
            }
        }.eraseToAnyPublisher()
    }
}
