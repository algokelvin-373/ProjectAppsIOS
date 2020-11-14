//
//  WelcomeRepository.swift
//  WelcomeApps
//
//  Created by Kelvin HT on 11/14/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

class WelcomeRepository: WelcomeRepositoryProtocol {
    private let welcomeDataSource: WelcomeDataSourceProtocol
    init(dataSource: WelcomeDataSourceProtocol) {
        self.welcomeDataSource = dataSource
    }
    func getWelcomeMessage(name: String) -> MessageEntity {
        welcomeDataSource.getWelcomeMessageFromSource(name: name)
    }
}
