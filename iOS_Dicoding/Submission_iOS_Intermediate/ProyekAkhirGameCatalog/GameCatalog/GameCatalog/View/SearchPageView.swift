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
        VStack {
            NavigationView {
                GameSearchList()
            }.navigationBarTitle(Text("Search Game"))
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct SearchPageView_Previews: PreviewProvider {
    static var previews: some View {
        SearchPageView()
    }
}
