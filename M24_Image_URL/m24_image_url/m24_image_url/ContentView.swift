//
//  ContentView.swift
//  m24_image_url
//
//  Created by Kelvin HT on 7/30/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

let url = "https://media.rawg.io/media/games/84d/84da2ac3fdfc6507807a1808595afb12.jpg"

struct ContentView: View {
    
    var body: some View {
        VStack() {
            URLImage(url: url)
            Spacer()
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 200.0, alignment: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
