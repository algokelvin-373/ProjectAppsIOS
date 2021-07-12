//
//  ContentView.swift
//  m23_searchview_swift_ui
//
//  Created by Kelvin HT on 7/25/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    
    var body: some View {
        VStack {
            HStack {
            
                TextField("Search", text: $text)
                    .padding()
                Button(action: {
                    
                    self.text = ""
                    
                }) {
                    
                    Text("Cancel")
                        .padding()
                        .foregroundColor(Color.black)
                    .background(Color(red: 200.0/255, green: 200.0/255, blue: 200.0/255, opacity: 1.0))
                
                }
            }
            
            Text(text)
                .foregroundColor(Color.red)
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
            .background(Color(red: 243.0/255, green: 243.0/255, blue: 243.0/255, opacity: 1.0))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
