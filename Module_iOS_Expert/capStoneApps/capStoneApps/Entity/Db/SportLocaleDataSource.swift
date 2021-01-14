//
//  SportLocaleDataSource.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/14/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import Foundation
import RealmSwift

protocol SportLocaleDataSourceProtocol: class {
    func getSportLocale(result: @escaping (Result<[SportEntity], DatabaseError>) -> Void)
    func addSportLocale(from categories: [SportEntity], result: @escaping (Result<Bool, DatabaseError>) -> Void)
}

final class SportLocaleDataSource: NSObject {
    private let realmSport: Realm?
    private init(realm: Realm?) {
        self.realmSport = realm
    }
    static let sharedInstance: (Realm?) -> SportLocaleDataSource = {
        realmDbSport in return SportLocaleDataSource(realm: realmDbSport)
    }
}

extension SportLocaleDataSource: SportLocaleDataSourceProtocol {
    func getSportLocale(result: @escaping (Result<[SportEntity], DatabaseError>) -> Void) {
        if let realmSport = realmSport {
            let categories: Results<SportEntity> = {
              realmSport.objects(SportEntity.self)
                .sorted(byKeyPath: "title", ascending: true)
            }()
            result(.success(categories.toArray(ofType: SportEntity.self)))
        } else {
            result(.failure(.invalidInstance))
        }
    }
    func addSportLocale(from categories: [SportEntity], result: @escaping (Result<Bool, DatabaseError>) -> Void) {
        if let realmSport = realmSport {
            do {
                try realmSport.write {
                    for localeSport in categories {
                        realmSport.add(localeSport, update: .all)
                    }
                    result(.success(true))
                }
            } catch {
                result(.failure(.requestFailed))
            }
        } else {
            result(.failure(.invalidInstance))
        }
    }
}
