//
//  SportView.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 11/27/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct SportView: View {
    @ObservedObject var presenterSport: SportsPresenter

    var body: some View {
        ZStack {
            if presenterSport.loadingState {
                    LoadingViewUI()
                } else {
                    NavigationView {
                        ScrollView(.vertical, showsIndicators: false) {
                            ForEach(self.presenterSport.sports, id: \.id) { category in
                                ZStack {
                                    self.presenterSport.linkBuilder(for: category) {
                                        SportRowsView(dataSports: category)
                                    }.buttonStyle(PlainButtonStyle())
                                }.padding(8)
                            }
                        }
                    }.navigationBarTitle(Text("Sport"), displayMode: .automatic)
                }
            }.onAppear {
                if self.presenterSport.sports.count == 0 {
                    self.presenterSport.getSports()
                }
            }
    }
}
