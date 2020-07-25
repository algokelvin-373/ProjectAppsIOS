//
//  SearchPageView.swift
//  GameCatalog
//
//  Created by Kelvin HT on 7/19/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct SearchPageView: View {
    @State var txt = ""
    
    var body: some View {
        VStack {
            SearchView(txt: $txt)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct SearchView: View {
    @Binding var txt: String
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    TextField("Search", text: $txt)
                        .padding(.trailing, 75)
                }.padding()
                    .background(Color.white)
                
                HStack {
                    Spacer()
                    Button(action: {
                        self.txt = ""
                    }) {
                        Text("Cancel")
                    }.foregroundColor(.black)
                }.padding()
            }
        }
    }
}

struct SearchPageView_Previews: PreviewProvider {
    static var previews: some View {
        SearchPageView()
    }
}
