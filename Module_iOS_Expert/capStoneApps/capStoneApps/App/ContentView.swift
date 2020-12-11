//
//  ContentView.swift
//  capStoneApps
//
//  Created by Kelvin HT on 11/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var profilePresenter: ProfilePresenter
    @EnvironmentObject var gamePresenter: GamePresenter

    var body: some View {
        TabView {
            MovieView().tabItem({
            Image("\(ConstantVal.TabBarImage.movieTabBar)").renderingMode(.template)
                Text("\(ConstantVal.TabBarText.movieTabBar)")
            }).tag(0)

            SportView().tabItem({
            Image("\(ConstantVal.TabBarImage.sportTabBar)").renderingMode(.template)
                Text("\(ConstantVal.TabBarText.sportTabBar)")
            }).tag(1)

            GameView(presenterGame: gamePresenter).tabItem({
            Image("\(ConstantVal.TabBarImage.gameTabBar)").renderingMode(.template)
                Text("\(ConstantVal.TabBarText.gameTabBar)")
            }).tag(2)

            TravelView().tabItem({
            Image("\(ConstantVal.TabBarImage.travelTabBar)").renderingMode(.template)
                Text("\(ConstantVal.TabBarText.travelTabBar)")
            }).tag(3)

            ProfileView(profilePresenter: profilePresenter).tabItem({
            Image("\(ConstantVal.TabBarImage.profileTabBar)").renderingMode(.template)
                Text("\(ConstantVal.TabBarText.profileTabBar)")
            }).tag(4)

        }.accentColor(Color(red: 16.0/255, green: 152.0/255, blue: 251.0/255, opacity: 1.0))
    }
}
