//
//  Injection.swift
//  WelcomeApps
//
//  Created by Kelvin HT on 11/14/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

final class Injection: ObservableObject {
    private func provideDataSource() -> WelcomeDataSourceProtocol {
        return WelcomeDataSource()
    }
    private func provideRepository() -> WelcomeRepositoryProtocol {
        let welcomeDataSource = provideDataSource()
        return WelcomeRepository(dataSource: welcomeDataSource)
    }
    func provideUseCase() -> WelcomeUseCase {
        let welcomeRepository = provideRepository()
        return WelcomeInteractor(repository: welcomeRepository)
    }
}
