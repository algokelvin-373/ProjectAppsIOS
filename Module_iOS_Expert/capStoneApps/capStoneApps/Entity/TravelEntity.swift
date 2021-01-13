//
//  TravelEntity.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/22/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

struct DataTravels: Decodable {
    let places: [Travels]
}

struct Travels: Decodable {
    let id: Int
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    let description: String
    let address: String
    let like: Int
}

struct TravelModel: Equatable, Identifiable, GeneralAttribute {
    let id: Int
    let name: String
    let image: String

    let latitude: Double
    let longitude: Double
    let description: String
    let address: String
    let like: Int
}
