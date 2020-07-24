//
//  ContentView.swift
//  m22_data_api_01
//
//  Created by Kelvin HT on 7/21/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var games: [Game] = []
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Data game")
                ForEach(games, id: \.id) { data in
                    Text("Game : \(data.name)")
                }
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
            .onAppear {
                Api().getDataGame { (game) in
                    self.games = game
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

