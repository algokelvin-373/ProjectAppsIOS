//
//  StatusPhotos.swift
//  ProfileApps
//
//  Created by Kelvin HT on 5/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import UIKit

struct StatusPhotos {
    let image: UIImage
    let title: String
    let likes: String
    let status: String
}

var statusPhotos: [StatusPhotos] = [
    StatusPhotos(
        image: UIImage(named:"photos01")!,
        title: "Exis Style with Black Glasses",
        likes: "49",
        status: "Tak terasa udh 1 bulan karantina. Kangen ke kantor, Jalan keluar, ikut seminar dan workshop, dll. Semoga wabah ini berakhir dan bisa beraktifitas seperti biasa kembali.😊🙏🏻 \n #happy #happysaturday #saturday #stayathome #dirumahaja #style #styles #photos #follow #liker #likes"
    ),
    StatusPhotos(
        image: UIImage(named:"photos02")!,
        title: "Cool face",
        likes: "37",
        status: "Tetap semangat kerja ya guys baik kerja di rumah maupun tetap ke kantor. Yang paling utama adalah jaga kesehatan dan berdoa untuk perlindungan agar bebas dari penyakit. Tak lupa juga kita doakan agar orang yg sakit segera disembuhkan. Amin 😊🙏🏻 Tuhan memberkati. Selamat pagi. \n #morning #goodmorning #blessed #work #believe #selfie #style #styles #face #handsome #man #happy #likes #liker #liked #likeforlikes #follow #followme #followers"
    )
]
