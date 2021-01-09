//
//  GameRepository.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/11/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

protocol GameRepositoryProtocol {
    func getGame(result: @escaping (Result<[GameModel], Error>) -> Void)
}

final class GameRepository: NSObject {
    typealias GameInstance = (GameDataSource) -> GameRepository

    fileprivate let remote: GameDataSource

    private init(remote: GameDataSource) {
        self.remote = remote
    }

    static let sharedInstance: GameInstance = { remoteRepo in
        return GameRepository(remote: remoteRepo)
    }
}

extension GameRepository: GameRepositoryProtocol {
    func getGame(result: @escaping (Result<[GameModel], Error>) -> Void) {
        self.remote.getGame { remoteResponses in
            switch remoteResponses {
            case .success(let gameResponses):
              let resultList = DataMapper.mapGameResponsesToDomains(input: gameResponses)
              result(.success(resultList))
            case .failure(let error):
              result(.failure(error))
            }
        }
    }
}
