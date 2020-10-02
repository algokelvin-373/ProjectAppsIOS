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
                        VStack {
                            Text(games.title ?? "Unknown")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
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
