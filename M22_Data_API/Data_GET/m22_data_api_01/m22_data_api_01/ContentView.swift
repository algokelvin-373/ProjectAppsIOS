//
//  ContentView.swift
//  m22_data_api_01
//
//  Created by Kelvin HT on 7/21/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    let url = "https://api.rawg.io/api/games"
    static var previews: some View {
        ContentView()
        getDataGame()
    }
    
    private func getDataGame() {
        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            
            guard let data = data, error  == nil else {
                print("Something when wrong")
                return
            }
            
            //have data
            var result: DataGame?
            do {
                result = try JSONDecoder().decode(DataGame.self, from: data)
            }
            catch {
                print("Failed to convert \(error.localizedDescription)")
            }
            
            guard let json = result else {
                return
            }
            print(json.results)
        })
        
        task.resume()
    }
}
