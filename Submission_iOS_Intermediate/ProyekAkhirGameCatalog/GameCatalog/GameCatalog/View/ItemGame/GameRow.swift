//
//  GameRow.swift
//  GameCatalog
//
//  Created by Kelvin HT on 7/26/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct GameRow: View {
    var game: Games
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                URLImage(url: game.background_image)
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 200.0, alignment: .top)
            
            HStack{
                Text(game.name)
                    .font(.custom("RobotoCondensed-Bold", size: 24))
                Spacer(minLength: 0)
                Image("ic-star-rating")
                Text(String(format: "%.2f/5", game.rating))
                    .font(.custom("RobotoCondensed-Regular", size: 24))
            }
            .padding(.horizontal, 4.0)
            
            HStack{
                ForEach((game.genres), id: \.id) { x in
                    Text(x.name)
                    .italic()
                }
                Spacer(minLength: 0)
                Text(game.released)
            }
            .padding(.horizontal, 4.0)
            
            HStack{
                ForEach(game.parent_platforms) { y in
                    if (y.platform.id == 1) {
                        Image("ic-tool-game-pc")
                    }
                    else if (y.platform.id == 2) {
                        Image("ic-tool-game-playstation")
                    }
                    else if (y.platform.id == 3) {
                        Image("ic-tool-game-xbox")
                    }
                }
            }
            .padding(8.0)
        }
        .padding(.top, 8.0)
        .background(Color(red: 255.0/255, green: 240.0/255, blue: 240.0/255, opacity: 1.0))
        .cornerRadius(5)
    }
}
