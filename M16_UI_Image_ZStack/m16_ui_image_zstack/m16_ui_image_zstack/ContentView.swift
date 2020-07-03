//
//  ContentView.swift
//  m16_ui_image_zstack
//
//  Created by Kelvin HT on 7/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Text("Gilang Ramadhan")
                Text("iOS Developer")
            }.background(Color.red)
            
            HStack(alignment: .center) {
                Text("Gilang Ramadhan")
                Text("iOS Developer")
            }.background(Color.yellow)
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .background(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
