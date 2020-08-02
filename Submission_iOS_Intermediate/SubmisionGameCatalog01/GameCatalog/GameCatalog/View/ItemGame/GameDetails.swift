//
//  GameDetails.swift
//  GameCatalog
//
//  Created by Kelvin HT on 8/2/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct GameDetails: View {
    @State var detailGame: DetailGames?
    let id: Int
    
    init(id: Int) {
        self.id = id
    }
    
    var body: some View {
        VStack {
            Text(detailGame!.name)
                .padding(.top, 16.0)
                .font(.custom("RobotoCondensed-Bold", size: 24))
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .onAppear() {
            ResponseDetailGame().getDataDetailGame(id: String(self.id)) { (dataGame) in
                self.detailGame = dataGame
            }
        }
    }
}
