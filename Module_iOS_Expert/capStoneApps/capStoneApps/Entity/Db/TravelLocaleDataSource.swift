//
//  TravelLocaleDataSource.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/14/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import Foundation
import RealmSwift

protocol TravelLocaleDataSourceProtocol: class {
    func getTravelLocale(result: @escaping (Result<[TravelEntity], DatabaseError>) -> Void)
    func addTravelLocale(from categories: [TravelEntity], result: @escaping (Result<Bool, DatabaseError>) -> Void)
}

final class TravelLocaleDataSource: NSObject {
    private let realmTravel: Realm?
    private init(realm: Realm?) {
        self.realmTravel = realm
    }
    static let sharedInstance: (Realm?) -> TravelLocaleDataSource = {
        realmDbTravel in return TravelLocaleDataSource(realm: realmDbTravel)
    }
}

extension TravelLocaleDataSource: TravelLocaleDataSourceProtocol {
    func getTravelLocale(result: @escaping (Result<[TravelEntity], DatabaseError>) -> Void) {
        if let realmTravel = realmTravel {
            let categories: Results<TravelEntity> = {
              realmTravel.objects(TravelEntity.self)
                .sorted(byKeyPath: "title", ascending: true)
            }()
            result(.success(categories.toArray(ofType: TravelEntity.self)))
        } else {
            result(.failure(.invalidInstance))
        }
    }
    func addTravelLocale(from categories: [TravelEntity], result: @escaping (Result<Bool, DatabaseError>) -> Void) {
        if let realmTravel = realmTravel {
            do {
                try realmTravel.write {
                    for localeTravel in categories {
                        realmTravel.add(localeTravel, update: .all)
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
