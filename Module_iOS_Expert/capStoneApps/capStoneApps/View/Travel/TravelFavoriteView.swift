//
//  TravelFavoriteView.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/15/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import SwiftUI

struct TravelFavoriteView: View {
    var body: some View {
        VStack {
            Text("Welcome in Travel Favorite")
        }.navigationBarTitle(Text("Travel Favorite"), displayMode: .inline)
    }
}

struct TravelFavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        TravelFavoriteView()
    }
}
