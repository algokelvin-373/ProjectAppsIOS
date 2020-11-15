//
//  WelcomePresenter.swift
//  WelcomeApps
//
//  Created by Kelvin HT on 11/14/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import SwiftUI

class WelcomePresenter: WelcomePresenterProtocol, ObservableObject {
    private let welcomeUseCase: WelcomeUseCase

    @Published var msgWelcome = MessageEntity(welcomeMessage: "empty message")

    init(useCase: WelcomeUseCase) {
        self.welcomeUseCase = useCase
    }

    func getMessage(name: String) -> MessageEntity {
        return welcomeUseCase.getMessage(name: name)
    }
    func getMessageVersion2(name: String) {
        msgWelcome = welcomeUseCase.getMessage(name: name)
    }
}
