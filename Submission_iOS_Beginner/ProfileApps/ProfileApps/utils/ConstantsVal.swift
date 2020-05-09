//
//  ConstantsVal.swift
//  ProfileApps
//
//  Created by Kelvin HT on 4/27/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import UIKit

func getDataProfile() -> Profile {
    let data = Profile()
    data.amountPost = "356"
    data.amountFollowers = "894"
    data.amountFollow = "1877"
    data.name = "Kelvin Herwanda Tandrio"
    data.email = "kelvin373.ht@gmail.com"
    data.place_of_birth = "Bengkulu"
    data.date_of_birth = "17 Mei 1996"
    data.address_house = "Jln. Mojo, Desa Celep Kidul, Dagen, Jaten, Karanganyar, Jawa Tengah"
    data.address = "Jln. KH. Syahdan No. C15 Dekat Binus Syahdan, Palmerah, Jakarta Barat, DKI Jakarta"
    
    data.short_description = "I'm Programmers Android and iOS (just beginners). I like research and get the best algorithms."
    data.long_description = "My name is Kelvin Herwanda Tandrio. I graduated from the Department of Informatics at Universitas Sebelas Maret, Surakarta I was once a teaching assistant for the courses in Programming Concepts, Data Structures, and Numerical Methods.\nI’m working as an Android Developer in a company in Jakarta. I learned coding Android since I was in semester 5. I learn Android by taking various learning courses from basic to high-level implementation. Besides that, I also learn Image Processing and Machine Learning to get more knowledge.\nI am a person who likes to research the algorithm to make some methods in certain cases. And I like a challenge to give some keyword to get the solution from anything example Stack Overflow, Community, etc. I also love to teach the people who want to learn to program especially Android."
    return data
}

func setBoldText(sizeFont: CGFloat) -> [NSAttributedString.Key: UIFont] {
    return [
       NSAttributedString.Key.font: UIFont(
        name: "HelveticaNeue-Bold",
        size: sizeFont)!
    ]
}
