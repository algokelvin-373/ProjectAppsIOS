//
//  ContentView.swift
//  capStoneApps
//
//  Created by Kelvin HT on 11/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView().tabItem({
            Image("\(ConstantVal.TabBarImage.homeTabBar)").renderingMode(.template)
                Text("\(ConstantVal.TabBarText.homeTabBar)")
            }).tag(0)
            
            SearchPageView().tabItem({
            Image("\(ConstantVal.TabBarImage.searchTabBar)").renderingMode(.template)
                Text("\(ConstantVal.TabBarText.searchTabBar)")
            }).tag(1)
            
            FavoritePageView().tabItem({
            Image("\(ConstantVal.TabBarImage.favoriteTabBar)").renderingMode(.template)
                Text("\(ConstantVal.TabBarText.favoriteTabBar)")
            }).tag(2)
            
            ProfileView().tabItem({
            Image("\(ConstantVal.TabBarImage.profileTabBar)").renderingMode(.template)
                Text("\(ConstantVal.TabBarText.profileTabBar)")
            }).tag(3)
        }.accentColor(Color(red: 16.0/255, green: 152.0/255, blue: 251.0/255, opacity: 1.0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
