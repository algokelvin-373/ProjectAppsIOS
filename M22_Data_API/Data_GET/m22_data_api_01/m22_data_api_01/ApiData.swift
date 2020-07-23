//
//  ApiData.swift
//  m22_data_api_01
//
//  Created by Kelvin HT on 7/21/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

let url = "https://api.rawg.io/api/games"

struct DataGame: Codable {
    let results: Array<Game>
}

struct Game: Codable {
    let id: Int
    let name: String
}

class Api {
    func getDataGame(responseData: @escaping ([Game]) -> ()) {
        guard let url = URL(string: "https://api.rawg.io/api/games") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            let jsonGame: DataGame?
            do {
                jsonGame = try JSONDecoder().decode(DataGame.self, from: data!)
                /** Play data in Asynchronous **/
                DispatchQueue.main.async {
                    responseData(jsonGame!.results) // To set value Array<Game> in 'responseData'
                    print(jsonGame!.results)
                }
            }
            catch {
                print("Failed to convert \(error.localizedDescription)")
            }
            
        }.resume()
    }
}
