//
//  SportFavoriteView.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/15/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import SwiftUI

struct SportFavoriteView: View {
    var body: some View {
        VStack {
            Text("Welcome in Sport Favorite")
        }.navigationBarTitle(Text("Sport Favorite"), displayMode: .inline)
    }
}

struct SportFavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        SportFavoriteView()
    }
}
