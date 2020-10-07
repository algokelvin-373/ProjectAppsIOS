//
//  GameList.swift
//  GameCatalog
//
//  Created by Kelvin HT on 7/26/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct GameList: View {
    @State var games: [Games] = []
    
    var body: some View {
        List(games) { game in
            ZStack {
                NavigationLink(destination: GameDetail(id: game.id)) {
                    GameRow(game: game)
                }
            }
        }.navigationBarTitle(Text("Games"), displayMode: .inline)
        .onAppear() {
            ResponseGame().getDataGame { (games) in
                self.games = games
            }
        }
    }
}
