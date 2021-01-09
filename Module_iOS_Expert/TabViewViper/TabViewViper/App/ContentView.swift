//
//  ContentView.swift
//  TabViewViper
//
//  Created by Kelvin HT on 12/11/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var mainPresenter: MainPresenter
    
    var body: some View {
        MainView(mainPresenter: mainPresenter)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
