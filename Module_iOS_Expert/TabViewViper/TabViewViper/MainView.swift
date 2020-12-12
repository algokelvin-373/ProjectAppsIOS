//
//  MainView.swift
//  TabViewViper
//
//  Created by Kelvin HT on 12/11/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            PageOneView().tabItem({
                Image("\(ConstantVal.TabBarImage.oneTabBar)").renderingMode(.template)
                Text("\(ConstantVal.TabBarText.oneTabBar)")
            }).tag(0)
            PageTwoView().tabItem({
                Image("\(ConstantVal.TabBarImage.twoTabBar)").renderingMode(.template)
                Text("\(ConstantVal.TabBarText.twoTabBar)")
            }).tag(1)
        }.accentColor(Color(red: 16.0/255, green: 152.0/255, blue: 251.0/255, opacity: 1.0))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
