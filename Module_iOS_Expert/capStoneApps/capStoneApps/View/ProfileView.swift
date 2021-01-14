//
//  ProfileView.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 11/27/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct ProfileView: View {

    @ObservedObject var profilePresenter: ProfilePresenter

    var body: some View {
//        ScrollView {
//            VStack(alignment: .center) {
//                VStack {
//                    Image("background_profile")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                    Image("photos_profile")
//                        .resizable()
//                        .frame(width: 150.0, height: 150.0)
//                        .offset(y: -50)
//                        .padding(.bottom, -50)
//
//                    Text(self.profilePresenter.profile.name)
//                        .font(.system(size: 25))
//                        .fontWeight(.bold)
//                        .frame(minWidth: 0, maxWidth: .infinity)
//                    Text(self.profilePresenter.profile.job)
//                        .font(.system(size: 20))
//                        .fontWeight(.medium)
//                        .frame(minWidth: 0, maxWidth: .infinity)
//                    Text(self.profilePresenter.profile.company)
//                        .font(.system(size: 15))
//                        .fontWeight(.medium)
//                        .frame(minWidth: 0, maxWidth: .infinity)
//
//                    Text("Your Favorite")
//                        .font(.system(size: 14))
//                        .fontWeight(.semibold)
//                        .padding(.top)
//
//                    TabFavoriteViewUI(
//                        title: "MOVIE",
//                        image: ConstantVal.TabBarImage.movieTabBar
//                    ).onTapGesture {
//                        print("You click Movie")
//                    }
//                    TabFavoriteViewUI(
//                        title: "GAME",
//                        image: ConstantVal.TabBarImage.gameTabBar
//                    ).onTapGesture {
//                        print("You click Game")
//                    }
//
//                    TabFavoriteViewUI(
//                        title: "SPORTS",
//                        image: ConstantVal.TabBarImage.sportTabBar
//                    ).onTapGesture {
//                        print("You click Sports")
//                    }
//
//                    TabFavoriteViewUI(
//                        title: "TRAVEL",
//                        image: ConstantVal.TabBarImage.travelTabBar
//                    ).onTapGesture {
//                        print("You click Travel")
//                    }
//                }
//            }.onAppear {
//                self.profilePresenter.getProfile()
//            }
//            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
//        }
        NavigationView {
            VStack {
                NavigationLink(destination: MovieFavoriteView()) {
                    TabFavoriteViewUI(title: "MOVIE", image: ConstantVal.TabBarImage.movieTabBar)
                }
                NavigationLink(destination: GameFavoriteView()) {
                    TabFavoriteViewUI(title: "GAME", image: ConstantVal.TabBarImage.gameTabBar)
                }
                NavigationLink(destination: SportFavoriteView()) {
                    TabFavoriteViewUI(title: "SPORT", image: ConstantVal.TabBarImage.sportTabBar)
                }
                NavigationLink(destination: TravelFavoriteView()) {
                    TabFavoriteViewUI(title: "TRAVEL", image: ConstantVal.TabBarImage.travelTabBar)
                }
            }
        }
    }
}
