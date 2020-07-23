//
//  HomeView.swift
//  GameCatalog
//
//  Created by Kelvin HT on 7/19/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack() {
                ForEach((1...10), id: \.self) { i in
                    VStack(spacing: 20) {
                        Image("background_profile")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        HStack{
                            Text("Resident Evil")
                                .font(.title)
                            Spacer(minLength: 0)
                            Image("ic-star-rating")
                            Text("4.48/5")
                            Button(action: {
                            }) {
                                Image("ic-love-on")
                            }
                        }.padding()
                        
                        
                    }
                    .background(Color(red: 255.0/255, green: 240.0/255, blue: 240.0/255, opacity: 1.0))
                    .cornerRadius(5)
                }
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                .background(Color.white)
            .padding()

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
