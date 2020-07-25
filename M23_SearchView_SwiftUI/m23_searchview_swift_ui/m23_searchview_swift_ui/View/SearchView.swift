//
//  SearchView.swift
//  m23_searchview_swift_ui
//
//  Created by Kelvin HT on 7/25/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

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
