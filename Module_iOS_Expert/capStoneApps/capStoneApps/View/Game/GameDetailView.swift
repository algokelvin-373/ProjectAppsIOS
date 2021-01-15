//
//  GameDetailView.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/12/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct GameDetailView: View {
    @ObservedObject var presenter: GameDetailPresenter

    @State var onLove = false

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
                            subtitle: self.presenter.category.released
                        ).padding(.top)
                    }
                }
            }
        }.navigationBarTitle(Text(self.presenter.category.name), displayMode: .inline)
        .navigationBarItems(trailing:
            Button(action: {
                print("Process....")
                self.presenter.addFavorite(game: DataLocaleMapper.mapGameToEntity(input: self.presenter.category))
                print("Success....")
            }) {
                Image(systemName: "person.circle").imageScale(.large)
            }
        )
        .onAppear {
            self.checkDataGameFavorite()
        }
    }

    func checkDataGameFavorite() {
        onLove = self.presenter.checkFavorite(game: DataLocaleMapper.mapGameToEntity(input: self.presenter.category))
        print(onLove)
    }
}
