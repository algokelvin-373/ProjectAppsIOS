//
//  SportsEntity.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/22/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import RealmSwift

struct DataSports: Decodable {
    let sports: [Sports]
}

struct Sports: Decodable {
    private enum CodingKeys: String, CodingKey {
        case idSport = "idSport"
        case nameSport = "strSport"
        case backgroundImageSport = "strSportThumb"
        case descriptionSport = "strSportDescription"
    }

    let idSport: String?
    let nameSport: String?
    let backgroundImageSport: String?
    let descriptionSport: String?
}

struct SportModel: Equatable, Identifiable, GeneralAttribute {
    let id: Int
    let name: String
    let image: String

    let description: String
}

class SportEntity: Object {
    @objc dynamic var id: Int = 0
    @objc dynamic var name: String = ""
    @objc dynamic var image: String = ""

//    @objc dynamic var description: String = ""

    override static func primaryKey() -> String? {
        return "id"
    }
}

