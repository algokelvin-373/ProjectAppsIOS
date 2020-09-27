//
//  SearchPageView.swift
//  GameCatalog
//
//  Created by Kelvin HT on 7/19/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct SearchPageView: View {
    @State var games: [GameSearch] = []
    @State private var keyword = ""
    @State private var searchGame = "evil"
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Input Keyword")) {
                    HStack {
                        VStack {
                            TextField("Search", text: self.$keyword)
                        }
                        
                        Button(action: {
                            self.searchGame = self.keyword
                        }){
                            Text("Search")
                                .padding(.all, 8.0)
                                .background(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                        }
                    }
                    .padding(.all, 16.0)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                }.font(.headline)
                
                ForEach(games, id: \.id) { data in
                    Text("Game Released : \(data.name)")
                }
            }.onAppear {
                ResponseGame().searchDataGame(key: self.searchGame) { (games) in
                    self.games = games
                }
            }
        }.navigationBarTitle(Text("Search Game"))
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct SearchPageView_Previews: PreviewProvider {
    static var previews: some View {
        SearchPageView()
    }
}
