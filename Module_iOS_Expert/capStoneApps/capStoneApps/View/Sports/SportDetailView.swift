//
//  SportDetailView.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/8/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct SportDetailView: View {
    @ObservedObject var presenter: SportsDetailPresenter

    var body: some View {
        ZStack {
            if presenter.loadingState {
                LoadingViewUI()
            } else {
                ScrollView(.vertical) {
                    VStack {
                        SubHeadLineUI(
                            image: self.presenter.category.image,
                            title: self.presenter.category.name,
                            subtitle: ""
                        ).padding(.top)

                        DescriptionViewUI(description: self.presenter.category.descript)
                            .padding()

                        Spacer()
                    }
                }
            }
        }.navigationBarTitle(Text(self.presenter.category.name), displayMode: .inline)
        .navigationBarItems(trailing:
            Button(action: {
                print("User icon pressed...")
            }) {
                Image(systemName: "person.circle").imageScale(.large)
            }
        )
    }
}
