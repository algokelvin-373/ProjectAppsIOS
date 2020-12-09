//
//  WelcomeRepositoryProtocol.swift
//  WelcomeApps
//
//  Created by Kelvin HT on 11/14/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

protocol WelcomeRepositoryProtocol {
    func getWelcomeMessage(name: String) -> MessageEntity
}
