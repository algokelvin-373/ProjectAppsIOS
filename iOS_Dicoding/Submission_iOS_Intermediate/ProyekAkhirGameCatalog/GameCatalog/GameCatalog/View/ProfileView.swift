//
//  ProfileView.swift
//  GameCatalog
//
//  Created by Kelvin HT on 7/19/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .center) {
            VStack {
                Image("background_profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("photos_profile")
                    .resizable()
                    .frame(width: 150.0, height: 150.0)
                    .offset(y: -50)
                    .padding(.bottom, -50)
                
                /**Name, Jobs, Company**/
                Text("Kelvin Herwanda Tandrio")
                    .font(.custom("Roboto-Bold", size: 30))
                    .frame(minWidth: 0, maxWidth: .infinity)
                Text("Android Developer")
                    .font(.custom("Roboto-Medium", size: 25))
                    .frame(minWidth: 0, maxWidth: .infinity)
                Text("TSM Technology")
                    .font(.custom("Roboto-Medium", size: 20))
                    .frame(minWidth: 0, maxWidth: .infinity)
                
                VStack {
                    Text("ABOUT ME")
                        .padding(.leading, 50.0)
                        .padding(.trailing, 50.0)
                        .padding(.top, 10.0)
                        .padding(.bottom, 30.0)
                        .font(.custom("Roboto-Regular", size: 20))
                        .background(Color(red: 251.0/255, green: 162.0/255, blue: 134.0/255, opacity: 1.0))
                        .cornerRadius(20.0)
                    
                    VStack {
                        Text(aboutMe)
                            .font(.custom("Roboto-Regular", size: 15))
                            .lineLimit(50)
                            .padding(.all, 16.0)
                            .border(Color(red: 251.0/255, green: 135.0/255, blue: 0.0/255, opacity: 1.0), width: 1)
                    }
                    .background(Color.white)
                    .cornerRadius(20.0)
                    .offset(y: -20.0)
                }
                .padding(.top, 16.0)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)

    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
