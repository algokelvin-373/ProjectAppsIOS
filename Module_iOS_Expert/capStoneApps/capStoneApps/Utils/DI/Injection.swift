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

    func provideTravel() -> TravelProtocol {
        let remoteTravel = TravelDataSource.sharedInstance
        let repositoryTravel = TravelRepository.sharedInstance(remoteTravel)
        return TravelInteractor(repository: repositoryTravel)
    }

    func provideGame() -> GameProtocol {
        let remoteGame = GameDataSource.sharedInstance
        let repositoryGame = GameRepository.sharedInstance(remoteGame)
        return GameInteractor(repository: repositoryGame)
    }

    func provideMovie() -> MovieProtocol {
        let remoteMovie = MovieDataSource.sharedInstance
        let repositoryMovie = MovieRepository.sharedInstance(remoteMovie)
        return MovieInteractor(repository: repositoryMovie)
    }

    func provideSport() -> SportsProtocol {
        let remoteSport = SportDataSource.sharedInstance
        let repositorySport = SportRepository.sharedInstance(remoteSport)
        return SportsInteractor(repository: repositorySport)
    }
}
