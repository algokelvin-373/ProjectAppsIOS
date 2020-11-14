//
//  Injection.swift
//  WelcomeApps
//
//  Created by Kelvin HT on 11/14/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import Combine

class Injection: ObservableObject {
    private var useCase: WelcomeUseCase
    private var presenter: WelcomePresenter
    @Published var welcome: MessageEntity
    init() {
        let welcomeDataSource = WelcomeDataSource()
        let welcomeRepository = WelcomeRepository(dataSource: welcomeDataSource)
        self.useCase = WelcomeInteractor(repository: welcomeRepository)
        self.presenter = WelcomePresenter(useCase: useCase)
        self.welcome = presenter.getMessage(name: "AlgoKelvin")
    }
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
