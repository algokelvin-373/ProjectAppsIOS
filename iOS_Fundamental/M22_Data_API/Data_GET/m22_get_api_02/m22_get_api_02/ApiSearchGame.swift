//
//  ApiSearchGame.swift
//  m22_get_api_02
//
//  Created by Kelvin HT on 7/25/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import SwiftUI

struct DataGame: Codable {
    var results: [Game]
}

struct Game: Codable {
    var id: Int
    var name: String
}

class Api {
    func getDataGame(search: String, completion: @escaping ([Game]) -> Void) {
        var componentURL = URLComponents(string: "https://api.rawg.io/api/games")!
        componentURL.queryItems = [
            URLQueryItem(name: "search", value: search)
        ]
        
        let url = URLRequest(url: componentURL.url!)
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data2 = data, error == nil else {
                return
            }
            
            let jsonGame: DataGame?
            do {
                jsonGame = try JSONDecoder().decode(DataGame.self, from: data2)
                completion(jsonGame!.results) // To set value Array<Game> in 'responseData'
                print(jsonGame!.results)
            }
            catch {
                print("Failed to convert \(error.localizedDescription)")
            }
            
        }.resume()
    }
}
