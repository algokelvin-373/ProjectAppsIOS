//
//  MovieDetailView.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/12/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct MovieDetailView: View {

    @ObservedObject var presenter: MovieDetailPresenter

    var body: some View {
        ZStack {
            if presenter.loadingState {
                LoadingViewUI()
            } else {
                ScrollView(.vertical) {
                    VStack {
                        ImageViewUI(image: (API.baseUrlImage)+(self.presenter.category.image))

                        Spacer()

                        HeadLineViewUI(
                            title: self.presenter.category.name,
                            subtitle: self.presenter.category.released
                        )
                    }
                }
            }
        }.navigationBarTitle(Text(self.presenter.category.name), displayMode: .inline)
    }
}
