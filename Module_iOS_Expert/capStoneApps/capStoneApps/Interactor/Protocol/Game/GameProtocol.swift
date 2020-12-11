//
//  GameProtocol.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/10/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

protocol GameProtocol {
  func getGame(completion: @escaping (Result<[Games], URLError>) -> Void)
}
