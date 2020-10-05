//
//  GameFavoriteList.swift
//  GameCatalog
//
//  Created by Kelvin HT on 9/22/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct GameFavoriteList: View {
    @ObservedObject private var dataGameFavorite = GameFavoriteCoreData()
    
    var body: some View {
        List {
            ForEach(dataGameFavorite.data, id: \.self) { games in
                HStack(spacing: 1.0) {
                    VStack(alignment: .leading) {
                        URLImage(url: games.image ?? "nil")
                    }.frame(minWidth: 0, maxWidth: 140.0, minHeight: 0, maxHeight: 90.0, alignment: .top)
                    
                    VStack(alignment: .leading, spacing: 0.0) {
                        Text(games.title ?? "Unknown")
                            .font(.custom("RobotoCondensed-Bold", size: 18))
                        Text(games.date_release ?? "2020-10-02")
                            .font(.custom("RobotoCondensed-Regular", size: 12))
                    }
                }
            }.onDelete(perform: { (index) in
                for x in index {
                    let gameFavorite = self.dataGameFavorite.data[x]
                    let id = gameFavorite.id
                    if id == gameFavorite.id {
                        self.dataGameFavorite.deleteData(id: id)
                  }
                }
                self.dataGameFavorite.readData()
            })
        }.navigationBarTitle(Text("My Game Favorite"), displayMode: .inline)
    }
}

struct GameFavoriteList_Previews: PreviewProvider {
    static var previews: some View {
        GameFavoriteList()
    }
}
