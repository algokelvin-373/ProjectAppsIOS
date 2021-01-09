//
//  TravelView.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 11/27/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct TravelView: View {
    @ObservedObject var presenterTravel: TravelPresenter
    
    var body: some View {
        ZStack {
            if presenterTravel.loadingState {
                VStack {
                    Text("Loading...")
                    ActivityIndicator()
                }
            } else {
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(self.presenterTravel.travels, id: \.id) { travel in
                        VStack {
                            Text(travel.name)
                        }
                    }
                }
            }
        }.onAppear {
            if self.presenterTravel.travels.count == 0 {
                self.presenterTravel.getTravels()
            }
        }
        .navigationBarTitle(Text("Travel"), displayMode: .automatic)
    }
}
