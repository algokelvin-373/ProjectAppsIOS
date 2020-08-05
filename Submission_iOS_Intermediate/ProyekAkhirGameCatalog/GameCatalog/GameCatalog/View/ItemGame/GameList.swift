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
                NavigationLink(destination: GameDetails(
                    detailGame: DetailGames(
                        id: game.id,
                        name: game.name,
                        background_image: game.background_image,
                        released: game.released,
                        rating: game.rating,
                        description_raw: "Memuat data..."))) {
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
