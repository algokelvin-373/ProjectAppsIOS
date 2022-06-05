//
//  ContentView.swift
//  m004_hello_world_special_2
//
//  Created by Kelvin HT on 6/5/22.
//  Copyright © 2022 Kelvin HT. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var amount: Int = 0
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Image("Logo_AlgoKelvin_v3")
                .resizable()
                .frame(width: 200.0, height: 200.0)
            
            Text("By: AlgoKelvin")
                .font(.title)
            
            Text("Hello, Kelvin")
                .font(.body)
            
            Button("Click Here", action: {
                self.amount += 1
            }).padding(.all, 10.0)
                .background(/*@START_MENU_TOKEN@*/Color.yellow/*@END_MENU_TOKEN@*/)
            
            Text("You click \(amount) times")
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
