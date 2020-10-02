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
    
    var body: some View {
        NavigationView {
            if dataGameFavorite.data.isEmpty {
                Text("Oopss... Data Game Favorite is Empty")
            }
            else {
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
                    }
                }.navigationBarTitle(Text("My Game Favorite"))
            }
        }.onAppear {
            self.dataGameFavorite.readData()
        }
    }
}

struct FavoritePageView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritePageView()
    }
}
