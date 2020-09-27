//
//  ResponseSearchGame.swift
//  GameCatalog
//
//  Created by Kelvin HT on 9/27/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import Combine

class ResponseSearchGame: ObservableObject {
    let objectWillChange = PassthroughSubject<ResponseSearchGame, Never>()
    @Published var searchGames = [GameSearch]() {
        didSet {
            objectWillChange.send(self)
        }
    }
    
    init() {
        searchDataGame(key: "")
    }
    
    /*Get Data Item Game from Search Data*/
    func searchDataGame(key: String) {
        guard var componentURL = URLComponents(string: "https://api.rawg.io/api/games") else { return }
        componentURL.queryItems = [
            URLQueryItem(name: "search", value: key)
        ]
        guard let url = componentURL.url else { return }
        let request = URLRequest(url: url)

        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data2 = data, error == nil else {
                return
            }
                
            let jsonGame: SearchGame?
            do {
                jsonGame = try JSONDecoder().decode(SearchGame.self, from: data2)
                
                DispatchQueue.main.async {
                    self.searchGames = jsonGame!.results
                }
                print(jsonGame!.results)
            }
            catch {
                print("Failed to convert \(error.localizedDescription)")
            }
                
        }.resume()
    }
}
