//
//  GameSearchDetails.swift
//  GameCatalog
//
//  Created by Kelvin HT on 10/6/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct GameSearchDetails: View {
    @ObservedObject private var dataGameFavorite = GameFavoriteCoreData()
    
    @State var buttonSearch = false
    @State var addGameFavorite = "ic-love-off"
    @State var onLove = false
    @State var detailGame: DetailGames = dummyDetailGame
    
    @State var id: Int
    
    var body: some View {
        ScrollView {
            VStack {
                Text(detailGame.name)
                    .font(.custom("RobotoCondensed-Bold", size: 24))
                
                VStack {
                    URLImage(url: detailGame.background_image)
                }
                .cornerRadius(5.0)
                .padding(.horizontal, 8.0)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 250.0, alignment: .top)
                
                HStack {
                    Text("Released: \(detailGame.released)")
                        .font(.custom("Roboto-Regular", size: 18))
                    Spacer(minLength: 0)
                    Image("ic-star-rating")
                    Text(String(format: "%.2f/5", detailGame.rating))
                        .font(.custom("RobotoCondensed-Regular", size: 18))
                    
                    Button(action: {
                        if (self.onLove == false) {
                            print("Save")
                            self.onLove = true
                            self.addGameFavorite = "ic-love-on"
                            self.dataGameFavorite.addNewData(
                                id: Int64(self.detailGame.id),
                                title: self.detailGame.name,
                                image: self.detailGame.background_image,
                                date: self.detailGame.released,
                                rating: String(format: "%.2f", self.detailGame.released)
                            )
                            self.checkDataGamefavorite()
                        }
                        else {
                            print("Delete")
                            self.onLove = false
                            self.addGameFavorite = "ic-love-off"
                            self.dataGameFavorite.deleteData(id: Int64(self.detailGame.id))
                            self.checkDataGamefavorite()
                        }
                    }) {
                        Image(onLove ? "ic-love-on" : "ic-love-off")
                    }
                }
                .padding(.horizontal, 8.0)
                
                Text("Description")
                    .font(.custom("RobotoCondensed-Bold", size: 20))
                Text(detailGame.description_raw)
                    .font(.custom("RobotoCondensed-Regular", size: 15))
                
            }
        }
        .padding(.all, 16.0)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .background(Color(red: 255.0/255, green: 240.0/255, blue: 240.0/255, opacity: 1.0))
        .onAppear() {
            self.checkDataGamefavorite()
            ResponseDetailGame().getDataDetailGame(id: String(self.detailGame.id)) { (dataGame) in
                print(dataGame)
                self.detailGame = dataGame
            }
        }
    }
    
    // This is function to check
    func checkDataGamefavorite() {
        onLove = self.dataGameFavorite.checkData(id: Int64(self.detailGame.id))
    }
}
