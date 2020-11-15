//
//  WelcomeView.swift
//  WelcomeApps
//
//  Created by Kelvin HT on 11/15/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {

    @ObservedObject var presenter: WelcomePresenter

    var body: some View {
        VStack {
            Text(presenter.msgWelcome.welcomeMessage)
        }.onAppear {
            self.presenter.getMessageVersion2(name: "Kelvin")
        }.navigationBarTitle(
          Text("Welcome Apps"),
          displayMode: .automatic
        )
    }
}
