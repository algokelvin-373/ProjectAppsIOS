//
//  WelcomePresenter.swift
//  WelcomeApps
//
//  Created by Kelvin HT on 11/14/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

class WelcomePresenter: WelcomePresenterProtocol {
    private let welcomeUseCase: WelcomeUseCase
    init(useCase: WelcomeUseCase) {
        self.welcomeUseCase = useCase
    }
    func getMessage(name: String) -> MessageEntity {
        return welcomeUseCase.getMessage(name: name)
    }
}
