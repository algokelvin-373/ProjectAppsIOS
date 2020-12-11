//
//  GameView.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 11/27/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct GameView: View {

    @ObservedObject var presenterGame: GamePresenter

    var body: some View {
        ZStack {
            if presenterGame.loadingState {
                VStack {
                    Text("Loading...")
                    ActivityIndicator()
                }
            } else {
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(self.presenterGame.games, id: \.idGame) { game in
                        VStack {
                            Text(game.nameGame ?? "Empty")
                        }
                    }
                }
            }
        }.onAppear {
            if self.presenterGame.games.count == 0 {
                self.presenterGame.getGames()
            }
        }
        .navigationBarTitle(Text("Game"), displayMode: .automatic)
    }
}
