//
//  GameSearchList.swift
//  GameCatalog
//
//  Created by Kelvin HT on 10/6/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct GameSearchList: View {
    @ObservedObject var todoGetter = ResponseSearchGame()
    
    @State var games: [GameSearch] = []
    @State private var keyword = ""
    @State private var key = ""
    
    var body: some View {
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
                HStack(alignment: .top, spacing: 4.0) {
                    VStack(alignment: .leading) {
                        URLImage(url: data.background_image)
                    }.frame(minWidth: 0, maxWidth: 140.0, minHeight: 0, maxHeight: 90.0, alignment: .top)
                    
                    VStack(alignment: .leading, spacing: 0.0) {
                        Text(data.name)
                            .font(.custom("RobotoCondensed-Bold", size: 18))
                        Text(data.released ?? "No have date released")
                        .font(.custom("RobotoCondensed-Regular", size: 12))
                    }
                }
            }
        }
    }
}

struct GameSearchList_Previews: PreviewProvider {
    static var previews: some View {
        GameSearchList()
    }
}
