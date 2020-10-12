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
        guard let componentURL = URLComponents(string: "https://api.rawg.io/api/games") else { return }
        guard let url = componentURL.url else { return }
        let request = URLRequest(url: url)
            
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                do {
                    let jsonGame = try JSONDecoder().decode(DataGame.self, from: data)
                    completion(jsonGame.results) // To set value Array<Game> in 'responseData'
                }
                catch {
                    print("Failed to convert \(error.localizedDescription)")
                }
            }
            else if let error = error {
                print("Error response: \(error.localizedDescription)")
            }
        }.resume()
    }
    
    /*Get Data Item Game from Search Data*/
    func searchDataGame(key: String, completion: @escaping ([GameSearch]) -> ()) {
        guard var componentURL = URLComponents(string: "https://api.rawg.io/api/games") else { return }
        componentURL.queryItems = [
            URLQueryItem(name: "search", value: key)
        ]
        guard let url = componentURL.url else { return }
        let request = URLRequest(url: url)

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                do {
                    let jsonGame = try JSONDecoder().decode(SearchGame.self, from: data)
                    completion(jsonGame.results) // To set value Array<Game> in 'responseData'
                }
                catch {
                    print("Failed to convert \(error.localizedDescription)")
                }
            }
            else if let error = error {
                print("Error response: \(error.localizedDescription)")
            }
        }.resume()
    }
    
    /*Get Data Detail Game**/
    func getDataDetailGame(id: String, completion: @escaping (DetailGames) -> ()) {
        guard let componentURL = URLComponents(string: "https://api.rawg.io/api/games/\(id)") else { return }
        guard let url = componentURL.url else { return }
        let request = URLRequest(url: url)
            
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                do {
                    let jsonGame = try JSONDecoder().decode(DetailGames.self, from: data)
                    completion(jsonGame) // To set value Array<Game> in 'responseData'
                }
                catch {
                    print("Failed to convert \(error.localizedDescription)")
                }
            }
            else if let error = error {
                print("Error response: \(error.localizedDescription)")
            }
        }.resume()
    }
}
