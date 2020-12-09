//
//  MealRowsView.swift
//  MealsApps
//
//  Created by Kelvin HT on 12/5/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct MealRowsView: View {

    var category: CategoryModel

    var body: some View {
        VStack {
            WebImage(url: URL(string: category.image))
                .resizable()
                .indicator(.activity)
                .transition(.fade(duration: 0.5))
                .scaledToFit()
                .frame(width: 200)
                .cornerRadius(30)
                .padding(.top)

            VStack(alignment: .leading, spacing: 10) {
                Text(category.title)
                    .font(.title)
                    .bold()

                Text(category.description)
                    .font(.system(size: 14))
                    .lineLimit(2)
            }.padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16))
        }.frame(width: UIScreen.main.bounds.width - 32, height: 250)
        .background(Color.red)
        .cornerRadius(30)
    }
}
