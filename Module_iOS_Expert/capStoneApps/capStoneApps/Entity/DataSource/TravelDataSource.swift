//
//  TravelDataSource.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/22/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import Combine
import Alamofire

protocol TravelDataSourceProtocol: class {
    func getTravel() -> AnyPublisher<[Travels], URLError>
}

final class TravelDataSource: NSObject {
    private override init() { }

    static let sharedInstance: TravelDataSource =  TravelDataSource()
}

extension TravelDataSource: TravelDataSourceProtocol {
//    func getTravel(result: @escaping (Result<[Travels], URLError>) -> Void) {
//        guard let url = URL(string: TravelEndpoints.Gets.travel.url) else { return }
//
//        let task = URLSession.shared.dataTask(with: url) { maybeData, maybeResponse, maybeError in
//          if maybeError != nil {
//              result(.failure(.addressUnreachable(url)))
//          } else if let data = maybeData, let response = maybeResponse as? HTTPURLResponse, response.statusCode == 200 {
//              let decoder = JSONDecoder()
//              do {
//                let categories = try decoder.decode(DataTravels.self, from: data).places
//                  result(.success(categories))
//              } catch {
//                result(.failure(.invalidResponse))
//              }
//          }
//        }
//        task.resume()
//    }
    func getTravel() -> AnyPublisher<[Travels], URLError> {
        return Future<[Travels], URLError> { completion in
            if let url = URL(string: TravelEndpoints.Gets.travel.url) {
                AF.request(url).validate().responseDecodable(of: DataTravels.self) { response in
                    switch response.result {
                    case .success(let value):
                        completion(.success(value.places))
                    case .failure:
                        completion(.failure(.invalidResponse))
                    }
                }
            }
        }.eraseToAnyPublisher()
    }
}
