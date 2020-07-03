//
//  ContentView.swift
//  m15_ui_text_button_textfield
//
//  Created by Kelvin HT on 7/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = "Algokelvin"
    
    var body: some View {
        VStack {
            /**UI Text**/
            Text("Hello AlgoKelvin")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.black)
            .background(Color.orange)
            .padding(.all, 8.0)
            
            /**UI Button**/
            Button(action: {
                print("You click Button OK")
            }) {
                Text("OKAY")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(Color.black)
                    .padding(.vertical, 8.0)
                    .padding(.horizontal, 50.0)
                    .background(/*@START_MENU_TOKEN@*/Color.green/*@END_MENU_TOKEN@*/)
            }
            
            /**UI TextField***/
            TextField("iOS Fundamental", text: $name)
                .font(Font.system(size: 15, weight: .medium, design: .serif))
                .padding(.all)
                .background(Color.white)
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
