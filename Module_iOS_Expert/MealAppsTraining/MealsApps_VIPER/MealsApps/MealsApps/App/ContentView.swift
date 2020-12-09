//
//  ContentView.swift
//  MealsApps
//
//  Created by Kelvin HT on 11/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var mealPresenter: MealPresenter

    var body: some View {
        NavigationView {
            MealView(presenter: mealPresenter)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
