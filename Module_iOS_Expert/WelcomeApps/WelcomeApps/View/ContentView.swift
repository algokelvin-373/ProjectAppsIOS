//
//  ContentView.swift
//  WelcomeApps
//
//  Created by Kelvin HT on 11/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var welcomeMessage = Injection()
    var body: some View {
        Text(welcomeMessage.welcome)
    }
}
