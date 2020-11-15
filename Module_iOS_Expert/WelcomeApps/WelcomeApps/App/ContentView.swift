//
//  ContentView.swift
//  WelcomeApps
//
//  Created by Kelvin HT on 11/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var welcomePresenter: WelcomePresenter
    var body: some View {
        NavigationView {
            WelcomePresenter(useCase: welcomePresenter)
        }
    }
}
