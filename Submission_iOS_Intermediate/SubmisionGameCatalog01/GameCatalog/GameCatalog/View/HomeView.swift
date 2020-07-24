//
//  HomeView.swift
//  GameCatalog
//
//  Created by Kelvin HT on 7/19/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var games: [Games] = []
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach((games), id: \.id) { x in
                    VStack(alignment: .leading) {
                        Image("background_profile")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        HStack{
                            Text(x.name)
                                .font(.custom("RobotoCondensed-Bold", size: 24))
                            Spacer(minLength: 0)
                            Image("ic-star-rating")
                            Text(String(format: "%.2f/5", x.rating))
                            .font(.custom("RobotoCondensed-Regular", size: 24))
                            Button(action: {
                            }) {
                                Image("ic-love-on")
                            }
                        }
                        .padding(.horizontal, 4.0)
                        
                        HStack{
                            Text("Adventure")
                                .italic()
                            Text("Action")
                            .italic()
                        }
                        .padding(.horizontal, 4.0)
                        
                        HStack{
                            Image("ic-tool-game-pc")
                            Image("ic-tool-game-playstation")
                            Image("ic-tool-game-xbox")
                        }
                        .padding(8.0)
                    }
                    .padding(.top, 8.0)
                    .background(Color(red: 255.0/255, green: 240.0/255, blue: 240.0/255, opacity: 1.0))
                    .cornerRadius(5)
                }
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                .background(Color.white)
            .padding()
                .onAppear() {
                    ResponseGame().getDataGame { (games) in
                        self.games = games
                    }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
