//
//  ContentView.swift
//  m24_image_url
//
//  Created by Kelvin HT on 7/30/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let url = "https://media.rawg.io/media/games/84d/84da2ac3fdfc6507807a1808595afb12.jpg"
    
    var body: some View {
        URLImage(url: url)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
