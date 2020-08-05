//
//  ResponseGame.swift
//  GameCatalog
//
//  Created by Kelvin HT on 7/24/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

class ResponseGame {
    
    /*Get Data Item Game**/
    func getDataGame(completion: @escaping ([Games]) -> ()) {
        let url = URLRequest(url: URL(string: "https://api.rawg.io/api/games")!)
            
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data2 = data, error == nil else {
                return
            }
                
            let jsonGame: DataGame?
            do {
                jsonGame = try JSONDecoder().decode(DataGame.self, from: data2)
                completion(jsonGame!.results) // To set value Array<Game> in 'responseData'
            }
            catch {
                print("Failed to convert \(error.localizedDescription)")
            }
                
        }.resume()
    }
}
