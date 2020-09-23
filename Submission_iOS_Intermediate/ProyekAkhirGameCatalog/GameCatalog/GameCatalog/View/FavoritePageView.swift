//
//  FavoritePageView.swift
//  GameCatalog
//
//  Created by Kelvin HT on 8/6/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI
import CoreData

struct FavoritePageView: View {
    @ObservedObject private var dataGameFavorite = GameFavoriteCoreData()
    @FetchRequest(entity: GameFavorite.entity(), sortDescriptors: []) var gameFavorites: FetchedResults<GameFavorite>
    
    var body: some View {
        NavigationView {
            if gameFavorites.isEmpty {
                Text("Oopss... Data Game Favorite is Empty")
            }
            else {
                List {
                    ForEach(gameFavorites, id: \.self) { games in
                        VStack {
                            Text(games.title ?? "Unknown")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                        }
                    }
                }.navigationBarTitle(Text("My Game Favorite"))
            }
        }
    }
}

struct FavoritePageView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritePageView()
    }
}
