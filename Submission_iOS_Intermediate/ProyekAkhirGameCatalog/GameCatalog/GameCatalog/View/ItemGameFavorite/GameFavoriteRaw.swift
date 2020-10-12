//
//  GameFavoriteRaw.swift
//  GameCatalog
//
//  Created by Kelvin HT on 9/22/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct GameFavoriteRaw: View {
    var games: GameFavorite
    
    var body: some View {
        HStack(spacing: 1.0) {
            VStack(alignment: .leading) {
                URLImage(url: games.image ?? "nil")
            }.frame(minWidth: 0, maxWidth: 140.0, minHeight: 0, maxHeight: 90.0, alignment: .top)

            VStack(alignment: .leading, spacing: 0.0) {
                Text(games.title ?? "Unknown")
                    .font(.custom("RobotoCondensed-Bold", size: 18))
                Text(games.date_release ?? "2020-10-02")
                    .font(.custom("RobotoCondensed-Regular", size: 12))
                Text(String(format: "%.2f/5", games.rating ?? 0.0))
                .font(.custom("RobotoCondensed-Regular", size: 10))
            }
        }
    }
}
