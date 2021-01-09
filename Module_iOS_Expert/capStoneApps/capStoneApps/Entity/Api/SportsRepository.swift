//
//  SportRepository.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/22/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

protocol SportRepositoryProtocol {
    func getSport(result: @escaping (Result<[SportModel], Error>) -> Void)
}

final class SportRepository: NSObject {
    typealias SportInstance = (SportDataSource) -> SportRepository

    fileprivate let remote: SportDataSource

    private init(remote: SportDataSource) {
        self.remote = remote
    }

    static let sharedInstance: SportInstance = { remoteRepo in
        return SportRepository(remote: remoteRepo)
    }
}

extension SportRepository: SportRepositoryProtocol {
    func getSport(result: @escaping (Result<[SportModel], Error>) -> Void) {
        self.remote.getSport { remoteResponses in
            switch remoteResponses {
            case .success(let sportResponses):
                let resultList = DataMapper.mapSportResponsesToDomains(input: sportResponses)
              result(.success(resultList))
            case .failure(let error):
              result(.failure(error))
            }
        }
    }
}
