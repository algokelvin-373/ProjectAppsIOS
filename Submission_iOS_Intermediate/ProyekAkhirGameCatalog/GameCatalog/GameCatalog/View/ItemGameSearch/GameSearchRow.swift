//
//  GameSearchRow.swift
//  GameCatalog
//
//  Created by Kelvin HT on 10/6/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct GameSearchRow: View {
    var games: GameSearch
    
    var body: some View {
        HStack(alignment: .top, spacing: 4.0) {
            VStack(alignment: .leading) {
                URLImage(url: games.background_image ?? dummyDetailGame.background_image)
            }.frame(minWidth: 0, maxWidth: 140.0, minHeight: 0, maxHeight: 90.0, alignment: .top)
            
            VStack(alignment: .leading, spacing: 0.0) {
                Text(games.name)
                    .font(.custom("RobotoCondensed-Bold", size: 18))
                Text(games.released ?? "No have date released")
                .font(.custom("RobotoCondensed-Regular", size: 12))
            }
        }
    }
}
