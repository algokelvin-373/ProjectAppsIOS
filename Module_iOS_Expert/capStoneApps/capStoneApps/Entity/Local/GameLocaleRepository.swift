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
    func addLocaleGame(from categories: GameEntity, result: @escaping (Result<Bool, DatabaseError>) -> Void)
    func deleteLocaleGame(from categories: GameEntity, result: @escaping (Result<Bool, DatabaseError>) -> Void)
    func checkLocaleGame(from categories: GameEntity) -> Bool
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
    func checkLocaleGame(from categories: GameEntity) -> Bool {
        return locale.checkGameLocale(from: categories)
    }
    func deleteLocaleGame(from categories: GameEntity, result: @escaping (Result<Bool, DatabaseError>) -> Void) {
        locale.deleteGameLocale(from: categories) { deleteFavorite in
            switch deleteFavorite {
            case .success(let resultAdd):
                print("Success Delete Game Favorite")
                result(.success(resultAdd))
            case .failure(let error):
                print("Failed Delete Game Favorite")
                result(.failure(error))
            }
        }
    }
    func addLocaleGame(from categories: GameEntity, result: @escaping (Result<Bool, DatabaseError>) -> Void) {
        locale.addGameLocale(from: categories) { addFavorite in
            switch addFavorite {
            case .success(let resultAdd):
                print("Success Add Game Favorite")
                result(.success(resultAdd))
            case .failure(let error):
                print("Failed Add Game Favorite")
                result(.failure(error))
            }
        }
    }

    func getLocaleGame(result: @escaping (Result<[GameModel], Error>) -> Void) {
        locale.getGameLocale { localeResponses in
            switch localeResponses {
            case .success(let localeGame):
                let categoryList = DataLocaleMapper.mapGameToModel(input: localeGame)
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
