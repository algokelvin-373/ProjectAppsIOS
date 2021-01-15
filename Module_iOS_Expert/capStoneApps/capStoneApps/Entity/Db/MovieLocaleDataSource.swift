//
//  MovieLocaleDataSource.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/14/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import Foundation
import RealmSwift

protocol MovieLocaleDataSourceProtocol: class {
    func getMovieLocale(result: @escaping (Result<[MovieEntity], DatabaseError>) -> Void)
    func addMovieLocale(from categories: [MovieEntity], result: @escaping (Result<Bool, DatabaseError>) -> Void)
}

final class MovieLocaleDataSource: NSObject {
    private let realmMovie: Realm?
    private init(realm: Realm?) {
        self.realmMovie = realm
    }
    static let sharedInstance: (Realm?) -> MovieLocaleDataSource = {
        realmDbMovie in return MovieLocaleDataSource(realm: realmDbMovie)
    }
}

extension MovieLocaleDataSource: MovieLocaleDataSourceProtocol {
    func getMovieLocale(result: @escaping (Result<[MovieEntity], DatabaseError>) -> Void) {
        if let realmMovie = realmMovie {
            let categories: Results<MovieEntity> = {
              realmMovie.objects(MovieEntity.self)
                .sorted(byKeyPath: "title", ascending: true)
            }()
            result(.success(categories.toArray(ofType: MovieEntity.self)))
        } else {
            result(.failure(.invalidInstance))
        }
    }
    func addMovieLocale(from categories: [MovieEntity], result: @escaping (Result<Bool, DatabaseError>) -> Void) {
        if let realmMovie = realmMovie {
            do {
                try realmMovie.write {
                    for localeMovie in categories {
                        realmMovie.add(localeMovie, update: .all)
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
