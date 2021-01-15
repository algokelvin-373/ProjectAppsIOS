//
//  MovieFavoriteView.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/15/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import SwiftUI

struct MovieFavoriteView: View {
    var body: some View {
        VStack {
            Text("Welcome in Movie Favorite")
        }.navigationBarTitle(Text("Movie Favorite"), displayMode: .inline)
    }
}

struct MovieFavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        MovieFavoriteView()
    }
}
