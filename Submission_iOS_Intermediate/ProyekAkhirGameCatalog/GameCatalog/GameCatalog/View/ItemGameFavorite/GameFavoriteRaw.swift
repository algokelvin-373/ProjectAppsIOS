//
//  GameFavoriteRaw.swift
//  GameCatalog
//
//  Created by Kelvin HT on 9/22/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct GameFavoriteRaw: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 4.0) {
                VStack(alignment: .leading) {
                    URLImage(url: "https://media.rawg.io/media/games/4be/4be6a6ad0364751a96229c56bf69be59.jpg")
                }.frame(minWidth: 0, maxWidth: 140.0, minHeight: 0, maxHeight: 90.0, alignment: .top)
                
                VStack(alignment: .leading, spacing: 0.0) {
                    Text("God of War")
                        .font(.custom("RobotoCondensed-Bold", size: 18))
                    Text("April 20, 2018")
                        .font(.custom("RobotoCondensed-Regular", size: 12))
                }
                
                Image("ic-delete")
                
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 90.0, alignment: .top)
        }
        .padding(.all, 8.0)
        .background(Color(red: 255.0/255, green: 240.0/255, blue: 240.0/255, opacity: 1.0))
        .cornerRadius(5)
    }
}

struct GameFavoriteRaw_Previews: PreviewProvider {
    static var previews: some View {
        GameFavoriteRaw()
    }
}
