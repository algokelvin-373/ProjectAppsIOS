//
//  MealView.swift
//  MealsApps
//
//  Created by Kelvin HT on 12/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct MealView: View {

    @ObservedObject var presenter: MealPresenter

    var body: some View {
        ZStack {
            if presenter.loadingState {
                VStack {
                    Text("Loading...")
                    ActivityIndicator()
                }
            } else {
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(self.presenter.categories, id: \.id) { category in
                        ZStack {
                            self.presenter.linkBuilder(for: category) {
                                MealRowsView(category: category)
                            }.buttonStyle(PlainButtonStyle())
                        }.padding(8)
                    }
                }
            }
        }.onAppear {
            if self.presenter.categories.count == 0 {
                self.presenter.getCategories()
            }
        }.navigationBarTitle(Text("Meals Apps"), displayMode: .automatic)
    }
}
