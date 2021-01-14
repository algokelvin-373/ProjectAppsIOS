//
//  GameLocaleDataSource.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/14/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import Foundation
import RealmSwift

protocol GameLocaleDataSourceProtocol: class {
    func getGameLocale(result: @escaping (Result<[GameEntity], DatabaseError>) -> Void)
    func addGameLocale(from categories: [GameEntity],result: @escaping (Result<Bool, DatabaseError>) -> Void)
}

final class GameLocaleDataSource: NSObject {
    private let realm: Realm?
    private init(realm: Realm?) {
        self.realm = realm
    }
    static let sharedInstance: (Realm?) -> LocaleDataSource = {
        realmDatabase in return LocaleDataSource(realm: realmDatabase)
    }
}
