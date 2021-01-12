//
//  TravelDetailView.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/12/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import SwiftUI

struct TravelDetailView: View {
    @ObservedObject var presenter: TravelDetailPresenter

    var body: some View {
        ZStack {
            if presenter.loadingState {
                VStack {
                    Text("Loading...")
                    ActivityIndicator()
                }
            } else {
                VStack {
                    Text(self.presenter.category.name)
                }
            }
        }.navigationBarTitle(Text(self.presenter.category.name), displayMode: .large)
    }
}
