//
//  MealDetailView.swift
//  MealsApps
//
//  Created by Kelvin HT on 12/9/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct MealDetailView: View {

    @ObservedObject var presenter: MealDetailsPresenter

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
                        WebImage(url: URL(string: self.presenter.category.image))
                            .resizable()
                            .indicator(.activity)
                            .transition(.fade(duration: 0.5))
                            .scaledToFit()
                            .frame(width: 250.0, height: 250.0, alignment: .center)

                        Spacer()

                        VStack(alignment: .leading, spacing: 0) {
                            headerTitle("Description")
                                .padding([.top, .bottom])
                            Text(self.presenter.category.description)
                                .font(.system(size: 15))
                        }
                    }
                }
            }
        }.navigationBarTitle(Text(self.presenter.category.title), displayMode: .large)
    }
}

extension MealDetailView {
    func headerTitle(_ title: String) -> some View {
        return Text(title)
            .font(.headline)
    }
}
