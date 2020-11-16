//
//  AvengerDetail.swift
//  m19_AvengerSwiftUI
//
//  Created by Kelvin HT on 7/12/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct AvengerDetail: View {
    var avenger: Avenger
    
    var body: some View {
        ScrollView {
            VStack {
                Image(avenger.photo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 360, height: 360, alignment: .center)
                Spacer(minLength: 20)
                
                Text(avenger.name)
                    .font(.system(size: 25))
                    .bold()
                Spacer(minLength: 20)
                
                Text(avenger.description)
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 20))
                    
            }
        }.padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16))
    }
}

struct AvengerDetail_Previews: PreviewProvider {
    static var previews: some View {
        AvengerDetail(avenger: avenger[0])
    }
}
