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
            Image("\(ConstantVal.TabBarImage.tabBar0)")
                Text("\(ConstantVal.TabBarText.tabBar0)")
            }).tag(0)
            
            SearchPageView().tabItem({
            Image("\(ConstantVal.TabBarImage.tabBar1)")
                Text("\(ConstantVal.TabBarText.tabBar1)")
            }).tag(1)
            
            ProfileView().tabItem({
            Image("\(ConstantVal.TabBarImage.tabBar2)")
                Text("\(ConstantVal.TabBarText.tabBar2)")
            }).tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
