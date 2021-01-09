//
//  TravelRepository.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/22/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

protocol TravelRepositoryProtocol {
    func getTravel(result: @escaping (Result<[TravelModel], Error>) -> Void)
}

final class TravelRepository: NSObject {
    typealias TravelInstance = (TravelDataSource) -> TravelRepository

    fileprivate let remote: TravelDataSource

    private init(remote: TravelDataSource) {
        self.remote = remote
    }

    static let sharedInstance: TravelInstance = { remoteRepo in
        return TravelRepository(remote: remoteRepo)
    }
}

extension TravelRepository: TravelRepositoryProtocol {
    func getTravel(result: @escaping (Result<[TravelModel], Error>) -> Void) {
        self.remote.getTravel { remoteResponses in
            switch remoteResponses {
            case .success(let travelResponses):
                let resultList = DataMapper.mapTravelResponsesToDomains(input: travelResponses)
              result(.success(resultList))
            case .failure(let error):
              result(.failure(error))
            }
        }
    }
}
