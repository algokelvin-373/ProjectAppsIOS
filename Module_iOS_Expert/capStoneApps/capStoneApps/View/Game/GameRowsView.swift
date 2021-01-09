//
//  GameRowsView.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/9/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct GameRowsView: View {

    var dataGames: GameModel

    var body: some View {
        VStack {
            WebImage(url: URL(string: dataGames.backgroundImage))
                .resizable()
                .indicator(.activity)
                .transition(.fade(duration: 0.5))
                .scaledToFit()
                .frame(width: 200)
                .cornerRadius(30)
                .padding(.top)

            VStack(alignment: .leading, spacing: 10) {
                Text(dataGames.name)
                    .font(.title)
                    .bold()

                Text(dataGames.released)
                    .font(.system(size: 14))
                    .lineLimit(2)
            }.padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16))
        }.frame(width: UIScreen.main.bounds.width - 32, height: 250)
        .background(Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1)))
        .cornerRadius(30)
    }
}

struct GameRowsView_Previews: PreviewProvider {
    static var previews: some View {
        GameRowsView(dataGames: GameModel(
            id: 1,
            name: "Grand Theft Auto V",
            backgroundImage: "https://media.rawg.io/media/games/84d/84da2ac3fdfc6507807a1808595afb12.jpg",
            released: "2013-09-17",
            rating: 4.48))
    }
}
