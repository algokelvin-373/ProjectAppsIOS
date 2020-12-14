//
//  Injection.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/9/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

final class Injection: NSObject {
    func provideProfile() -> ProfileProtocol {
      return ProfileInteractor()
    }

    func provideGame() -> GameProtocol {
        let remoteGame = GameDataSource.sharedInstance
        let repositoryGame = GameRepository.sharedInstance(remoteGame)
        return GameInteractor(repository: repositoryGame)
    }
}
