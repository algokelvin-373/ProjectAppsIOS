//
//  GameLocaleRepository.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/15/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import Foundation

protocol GameLocaleRepositoryProtocol {
    func getLocaleGame(result: @escaping (Result<[GameModel], Error>) -> Void)
}

final class GameLocaleRepository: NSObject {
    typealias GameLocaleInstance = (GameLocaleDataSource) -> GameLocaleRepository

    fileprivate let locale: GameLocaleDataSource

    private init(locale: GameLocaleDataSource) {
      self.locale = locale
    }

    static let sharedInstance: GameLocaleInstance = { localeRepo in
      return GameLocaleRepository(locale: localeRepo)
    }
}

extension GameLocaleRepository: GameLocaleRepositoryProtocol {
    func getLocaleGame(result: @escaping (Result<[GameModel], Error>) -> Void) {
        locale.getGameLocale { localeResponses in
            switch localeResponses {
            case .success(let localeGame):
                let categoryList = DataLocaleMapper.mapGameToEntity(input: localeGame)
                if categoryList.isEmpty {
                    print("Database Game Favorite is Empty")
                } else {
                    result(.success(categoryList))
                }
            case .failure(let errorLocale):
                result(.failure(errorLocale))
            }
        }
    }
}
