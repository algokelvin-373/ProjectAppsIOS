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
            List {
                ForEach(gameFavorites, id: \.id) { member in
                    VStack {
                        Text(member.name ?? "Unknown")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)

                        Text(member.about ?? "Unknown")
                            .font(.body)
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                    }
                }
            }
            .navigationBarTitle(Text("My Game Favorite"))
            .navigationBarItems(trailing: EditButton())
        }
    }
}

struct FavoritePageView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritePageView()
    }
}
