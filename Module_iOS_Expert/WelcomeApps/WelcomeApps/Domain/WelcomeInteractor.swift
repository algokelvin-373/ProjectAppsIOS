//
//  WelcomeInteractor.swift
//  WelcomeApps
//
//  Created by Kelvin HT on 11/14/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

class WelcomeInteractor: WelcomeUseCase {
    private let welcomeRepository: WelcomeRepositoryProtocol
    init(repository: WelcomeRepositoryProtocol) {
        self.welcomeRepository = repository
    }
    func getMessage(name: String) -> MessageEntity {
        return welcomeRepository.getWelcomeMessage(name: name)
    }
}
