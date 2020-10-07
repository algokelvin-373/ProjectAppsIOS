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
                ZStack {
                    NavigationLink(destination: GameFavoriteDetails(id: Int(games.id))) {
                        GameFavoriteRaw(games: games)
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
