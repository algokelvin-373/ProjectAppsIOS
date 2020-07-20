//
//  ProfileView.swift
//  GameCatalog
//
//  Created by Kelvin HT on 7/19/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Image("background_profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("photos_profile")
                    .resizable()
                    .frame(width: 150.0, height: 150.0)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
