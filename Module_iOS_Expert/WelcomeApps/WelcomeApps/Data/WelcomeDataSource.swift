//
//  WelcomeDataSource.swift
//  WelcomeApps
//
//  Created by Kelvin HT on 11/14/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

class WelcomeDataSource: WelcomeDataSourceProtocol {
    func getWelcomeMessageFromSource(name: String) -> MessageEntity {
        return MessageEntity(
            welcomeMessage: "Welcome to iOS Expert\n" +
                "Hello, \(name)\n" +
                "Today I learn about Clean Architecture"
        )
    }
}
