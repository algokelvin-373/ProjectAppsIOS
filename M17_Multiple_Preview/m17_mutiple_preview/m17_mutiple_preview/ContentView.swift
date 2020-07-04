//
//  ContentView.swift
//  m17_mutiple_preview
//
//  Created by Kelvin HT on 7/4/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World! AlgoKelvin")
                .fontWeight(.regular)
                .foregroundColor(Color.black)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .padding(.horizontal)
            
            Text("AlgoKelvin learn SwiftUI")
                .fontWeight(.regular)
                .foregroundColor(Color.black)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .padding(.horizontal)
            
            Text("UI Version ContentView")
                .fontWeight(.regular)
                .foregroundColor(Color.black)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 7"))
                .previewDisplayName("iPhone 7 AlgoKelvin Old Version")
                .background(Color.yellow)
            
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 7"))
                .previewDisplayName("iPhone 7 AlgoKelvin Old Version")
                .background(Color.yellow)
        }
    }
}
