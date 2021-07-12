//
//  ApiData.swift
//  m22_data_api_01
//
//  Created by Kelvin HT on 7/21/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

let url = "https://api.rawg.io/api/games"

struct DataGame: Codable {
    var results: [Game]
}

struct Game: Codable {
    var id: Int
    var name: String
}

class Api {
    func getDataGame(completion: @escaping ([Game]) -> ()) {
        let url = URLRequest(url: URL(string: "https://api.rawg.io/api/games")!)
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            print("data: \(String(describing: data))")
            print("response: \(String(describing: response))")
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
