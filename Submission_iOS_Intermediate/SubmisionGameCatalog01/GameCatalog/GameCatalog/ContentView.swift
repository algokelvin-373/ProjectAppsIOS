//
//  ContentView.swift
//  GameCatalog
//
//  Created by Kelvin HT on 7/1/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView().tabItem({
            Image("\(ConstantVal.TabBarImage.tabBar0)").renderingMode(.template)
                Text("\(ConstantVal.TabBarText.tabBar0)")
            }).tag(0)
            
            SearchPageView().tabItem({
            Image("\(ConstantVal.TabBarImage.tabBar1)").renderingMode(.template)
                Text("\(ConstantVal.TabBarText.tabBar1)")
            }).tag(1)
            
            ProfileView().tabItem({
            Image("\(ConstantVal.TabBarImage.tabBar2)").renderingMode(.template)
                Text("\(ConstantVal.TabBarText.tabBar2)")
            }).tag(2)
        }.accentColor(Color(red: 16.0/255, green: 152.0/255, blue: 251.0/255, opacity: 1.0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
