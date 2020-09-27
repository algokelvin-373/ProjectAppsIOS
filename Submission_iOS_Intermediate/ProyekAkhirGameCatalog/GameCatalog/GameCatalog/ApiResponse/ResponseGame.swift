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
    
    /*Get Data Item Game from Search Data*/
    func searchDataGame(key: String, completion: @escaping ([GameSearch]) -> ()) {
        var componentURL = URLComponents(string: "https://api.rawg.io/api/games")!
        componentURL.queryItems = [
            URLQueryItem(name: "search", value: key)
        ]
        let request = URLRequest(url: componentURL.url!)

        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data2 = data, error == nil else {
                return
            }
                
            let jsonGame: SearchGame?
            do {
                jsonGame = try JSONDecoder().decode(SearchGame.self, from: data2)
                completion(jsonGame!.results) // To set value Array<Game> in 'responseData'
                print(jsonGame!.results)
            }
            catch {
                print("Failed to convert \(error.localizedDescription)")
            }
                
        }.resume()
    }
}
