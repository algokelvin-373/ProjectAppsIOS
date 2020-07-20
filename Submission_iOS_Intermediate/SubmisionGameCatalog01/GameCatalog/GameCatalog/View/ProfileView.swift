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
        VStack(alignment: .center) {
            VStack {
                Image("background_profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("photos_profile")
                    .resizable()
                    .frame(width: 150.0, height: 150.0)
                    .offset(y: -50)
                    .padding(.bottom, -50)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)

    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
