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
                VStack {
                    Text("Loading...")
                    ActivityIndicator()
                }
            } else {
                ScrollView(.vertical) {
                    VStack {
                        ImageViewUI(image: self.presenter.category.image)

                        Spacer()

                        VStack(alignment: .leading, spacing: 0) {
                            Text(self.presenter.category.name)
                                .font(.headline)
                                .padding([.top, .bottom])
                            Text(self.presenter.category.description)
                                .font(.system(size: 15))
                        }
                    }
                }
            }
        }.navigationBarTitle(Text(self.presenter.category.name), displayMode: .inline)
    }
}
