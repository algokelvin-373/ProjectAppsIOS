//
//  SearchPageView.swift
//  GameCatalog
//
//  Created by Kelvin HT on 7/19/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct SearchPageView: View {
    @ObservedObject var todoGetter = ResponseSearchGame()
    
    @State var games: [GameSearch] = []
    @State private var keyword = ""
    @State private var key = ""
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Input Keyword")) {
                    HStack {
                        VStack {
                            TextField("Search", text: self.$keyword)
                        }
                        
                        Button(action: {
                            self.key = self.keyword
                            self.todoGetter.searchDataGame(key: self.key)
                        }){
                            Text("Search")
                                .padding(.all, 8.0)
                                .background(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                        }
                    }
                    .padding(.all, 16.0)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                }.font(.headline)
                
                ForEach(todoGetter.searchGames, id: \.id) { data in
                    Text("Game Released : \(data.name)")
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
