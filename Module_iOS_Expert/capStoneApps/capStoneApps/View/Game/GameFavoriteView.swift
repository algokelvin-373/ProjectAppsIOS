//
//  GameFavoriteView.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/15/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import SwiftUI

struct GameFavoriteView: View {
    var body: some View {
        VStack {
            Text("Welcome in Game Favorite")
        }.navigationBarTitle(Text("Game Favorite"), displayMode: .inline)
    }
}

struct GameFavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        GameFavoriteView()
    }
}
