//
//  TravelDetailView.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/12/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct TravelDetailView: View {
    @ObservedObject var presenter: TravelDetailPresenter

    var body: some View {
        ZStack {
            if presenter.loadingState {
                LoadingViewUI()
            } else {
                ScrollView(.vertical) {
                    VStack {
                        MapViewUI(
                            latitude: self.presenter.category.latitude,
                            longitude: self.presenter.category.longitude
                        ).edgesIgnoringSafeArea(. top)
                        .frame(height: 300)

                        SubHeadLineUI(
                            image: self.presenter.category.image,
                            title: self.presenter.category.name,
                            subtitle: self.presenter.category.address
                        )

                        DescriptionViewUI(description: self.presenter.category.description)
                            .padding()

                        Spacer()
                    }
                }
            }
        }.navigationBarTitle(Text(self.presenter.category.name))
        .navigationBarItems(trailing:
            Button(action: {
                print("User icon pressed...")
            }) {
                Image(systemName: "person.circle").imageScale(.large)
            }
        )
    }
}
