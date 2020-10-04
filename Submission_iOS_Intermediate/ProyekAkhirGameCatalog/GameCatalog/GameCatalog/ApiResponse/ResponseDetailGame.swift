//
//  ResponseDetailGame.swift
//  GameCatalog
//
//  Created by Kelvin HT on 8/2/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

class ResponseDetailGame {
    /*Get Data Detail Game**/
    func getDataDetailGame(id: String, completion: @escaping (DetailGames) -> ()) {
        guard let componentURL = URLComponents(string: "https://api.rawg.io/api/games/\(id)") else { return }
        guard let url = componentURL.url else { return }
        let request = URLRequest(url: url)
            
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data2 = data, error == nil else {
                return
            }
                
            let jsonGame: DetailGames?
            do {
                jsonGame = try JSONDecoder().decode(DetailGames.self, from: data2)
                completion(jsonGame!) // To set value Detail Game in 'completion'
            }
            catch {
                print("Failed to convert \(error.localizedDescription)")
            }
                
        }.resume()
    }
}
