//
//  GameDetails.swift
//  GameCatalog
//
//  Created by Kelvin HT on 8/2/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct GameDetails: View {
    let detailGame: Games
    @State var descriptionGames: String
    
    var body: some View {
        VStack {
            Text(detailGame.name)
                .padding(.top, 16.0)
                .font(.custom("RobotoCondensed-Bold", size: 24))
            
            Text(descriptionGames)
                .onAppear() {
                    ResponseDetailGame().getDataDetailGame(id: String(self.detailGame.id)) { (dataGame) in
                        self.descriptionGames = dataGame.description_raw ?? "Nilai ini kosong"
                    }
                }
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    }
}
