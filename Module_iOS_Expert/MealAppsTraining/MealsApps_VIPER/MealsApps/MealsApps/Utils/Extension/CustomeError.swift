//
//  CustomeError.swift
//  MealsApps
//
//  Created by Kelvin HT on 12/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

enum URLError: LocalizedError {
    case invalidResponse
    case addressUnreachable(URL)

    var errorDescription: String? {
        switch self {
        case .invalidResponse:
            return "The server responded with garbage."
        case .addressUnreachable(let url):
            return "\(url.absoluteString) is unreachable."
        }
    }
}
