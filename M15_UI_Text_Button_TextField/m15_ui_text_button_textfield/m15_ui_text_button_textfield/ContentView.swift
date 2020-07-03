//
//  ContentView.swift
//  m15_ui_text_button_textfield
//
//  Created by Kelvin HT on 7/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello AlgoKelvin")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.black)
            .padding(.all, 8.0)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .background(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
