//
//  SearchPageView.swift
//  GameCatalog
//
//  Created by Kelvin HT on 7/19/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct SearchPageView: View {
    @State private var keyword = ""
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Input Keyword")) {
                    HStack {
                        VStack {
                            TextField("Search", text: self.$keyword)
                        }
                        
                        Button(action: {
                            
                        }){
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                                .imageScale(.large)
                        }
                    }
                    .padding(.all, 16.0)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                }.font(.headline)
                
                
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
