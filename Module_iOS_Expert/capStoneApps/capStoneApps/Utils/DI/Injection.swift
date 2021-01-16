//
//  Injection.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/9/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import RealmSwift

final class Injection: NSObject {
    func provideProfile() -> ProfileProtocol {
      return ProfileInteractor()
    }

    func provideTravelRepository() -> TravelRepositoryProtocol {
        let remoteTravel = TravelDataSource.sharedInstance
        return TravelRepository.sharedInstance(remoteTravel)
    }

    func provideTravel() -> TravelProtocol {
        let repositoryTravel = provideTravelRepository()
        return TravelInteractor(repository: repositoryTravel)
    }

    func provideTravelDetail(category: TravelModel) -> TravelDetailProtocol {
        let repositoryTravel = provideTravelRepository()
        return TravelDetailInteractor(repository: repositoryTravel, category: category)
    }

    func provideGameRepository() -> GameRepositoryProtocol {
        let remoteGame = GameDataSource.sharedInstance
        return GameRepository.sharedInstance(remoteGame)
    }

    func provideGameLocaleRepository() -> GameLocaleRepositoryProtocol {
        let realm = try? Realm()
        let localeGame = GameLocaleDataSource.sharedInstance(realm)
        return GameLocaleRepository.sharedInstance(localeGame)
    }

    func provideGame() -> GameProtocol {
        let repositoryGame = provideGameRepository()
        return GameInteractor(repository: repositoryGame)
    }

    func provideGameDetail(category: GameModel) -> GameDetailProtocol {
        let repositoryGame = provideGameRepository()
        let repositoryLocaleGame = provideGameLocaleRepository()
        return GameDetailInteractor(repository: repositoryGame,
                                    repositoryLocale: repositoryLocaleGame, category: category)
    }

    func provideGameFavorite() -> GameFavoriteProtocol {
        let repositoryGameLocale = provideGameLocaleRepository()
        return GameFavoriteInteractor(repository: repositoryGameLocale)
    }

    func provideMovieRepository() -> MovieRepositoryProtocol {
        let remoteMovie = MovieDataSource.sharedInstance
        return MovieRepository.sharedInstance(remoteMovie)
    }

    func provideMovie() -> MovieProtocol {
        let repositoryMovie = provideMovieRepository()
        return MovieInteractor(repository: repositoryMovie)
    }

    func provideMovieDetail(category: MovieModel) -> MovieDetailProtocol {
        let repositoryMovie = provideMovieRepository()
        return MovieDetailInteractor(repository: repositoryMovie, category: category)
    }

    func provideSportRepository() -> SportRepositoryProtocol {
        let remoteSport = SportDataSource.sharedInstance
        return SportRepository.sharedInstance(remoteSport)
    }

    func provideSport() -> SportsProtocol {
        let repositorySport = provideSportRepository()
        return SportsInteractor(repository: repositorySport)
    }

    func provideSportDetail(category: SportModel) -> SportsDetailProtocol {
      let repositorySport = provideSportRepository()
      return SportsDetailInteractor(repository: repositorySport, category: category)
    }
}
