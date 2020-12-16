//
//  MovieProtocol.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/15/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

protocol MovieProtocol {
  func getMovie(completion: @escaping (Result<[MovieModel], Error>) -> Void)
}
