//
//  SportRowsView.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/9/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import SwiftUI

struct SportRowsView: View {

    var dataSports: SportModel

    var body: some View {
        VStack {
            Text(dataSports.name)
        }.frame(width: UIScreen.main.bounds.width - 32, height: 250)
        .background(Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1)))
        .cornerRadius(30)
    }
}
