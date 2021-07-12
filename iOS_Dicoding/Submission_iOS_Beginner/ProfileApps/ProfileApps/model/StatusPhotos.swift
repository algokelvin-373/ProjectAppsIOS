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
    ),
    StatusPhotos(
        image: UIImage(named:"photos03")!,
        title: "Drink Cappucino in Starbucks",
        likes: "57",
        status: "Everyone strives and prays to achieve dreams, success, and live comfortably for the future. Happy Sunday 😊😊 \n #sunday #happy #happysunday #happylife #dreams #success #comfortably #future #believe #blessed #style #sty #life #oke #okay #okey #like #likes #liker #follow #followme"
    ),
    StatusPhotos(
        image: UIImage(named:"photos04")!,
        title: "Smile Face",
        likes: "70",
        status: "Always smile and grateful in your life because God has given your life better. Even though your hopes are not reached but God will always give you the best ☺☺ \n #smile #keepsmile #smart #blessed #god #life #better #spirit #enjoy #enjoylife #happy #happytime #best #ok #oke #jos #joz #joss #jozz"
    ),
    StatusPhotos(
        image: UIImage(named:"photos05")!,
        title: "Seminar in Gojek",
        likes: "71",
        status: "Believe your self. You can do it. Try and Try again to get solve 😊😊 Senang sekali ikut Kotlin Event di kantor Gojek di Awal September kemarin. Banyak ilmu yang saya dapatkan dan sangat menarik bahkan metode - metode untuk mendapatkan case terbaik jadi tau. Selama ini saya masih kecil pengetahuan dunia programming, namun dengan join ini jadi tahu bagaimana bentuk model, algoritma, dll untuk implementasi setiap case dalam Project 🙂 \n Thank you Kotlin Everywhere 😇😇 \n #kotlin #gojek #startup #coding #informatics #algorithm #android #company #projects #study #believe #blessed #try #solve #style #sty #it #like #liker #follow #followers #followme"
    ),
    StatusPhotos(
        image: UIImage(named:"photos06")!,
        title: "Mantepp style",
        likes: "73",
        status: "Hadapilah setiap rintangan dalam perjalanan hidup karena itu kan menjadi pengalaman untuk menjadi lebih baik lagi.Always grateful because God Always bless and help in Journey life 😊😊 Tetap semangat hidup \n\n #semangathidup #selfie #bless #blessed #journey #jetskycafe #jetskybeachclub #jakarta #indonesian #style #sty #oke #ok #okay #joz #jos #jozz #trip #liker #likers #liked #followme #follower #better #jakartahits #jakartautara"
    ),
    StatusPhotos(
        image: UIImage(named:"photos07")!,
        title: "Photo in Bengkulu",
        likes: "57",
        status: "Road to Bengkulu, my hometown 😊\n\n#bengkulu #indonesia #trip #hometown #life #live #happy #grateful #tourism #selfie #my #mylife #oke #okay #jos #joz #mantap #likers #liked #liker #follow"
    ),
    StatusPhotos(
        image: UIImage(named:"photos08")!,
        title: "Enjoy life",
        likes: "37",
        status: "It doesn't matter you're sad when you fail. But believe that it is God's plan to get better. Happy Saturday 😊😊\n\n#semangathidup #selfie #happy #happysaturday #saturday #believe #blessed #man #handsome #style #mystyle #sty #journey #jakarta #likes #like4likes #liker #followme #follow"
    ),
    StatusPhotos(
        image: UIImage(named:"photos09")!,
        title: "Seminar in Tokopedia",
        likes: "74",
        status: "I am happy to join an event from Google and Tokopedia to talk about Android Development. At this event, speakers from Tokopedia, Gojek, and speakers from abroad. I have got to know more about Android's topic example: CameraX, Android Q, MVVM, and others. This event talks about Flutter and Dart which can build platforms into Android, iOS, and Web. his event was truly extraordinary and interesting. Thank you Tokopedia and Google Jakarta for holding this event. So that developers know more about the development of the IT world 😊😊 Foto akhir itu foto bersama Brett Morgan yang membahas Tentang Flutter and Dart \n\n #semangathidup #tokopedia #google #googlejakarta #android #ios #flutter #dart #informatica #technology #coding #developer #photos #photoshoot #computer #computerscience #algorithm #style #liker #likes #followme #follow"
    ),
    StatusPhotos(
        image: UIImage(named:"photos10")!,
        title: "With my friends",
        likes: "61",
        status: " glad to join DevFest Events to get more knowladge IT world like that Android Developer, Machine Learning, and others.Tak lupa juga bersama temen untuk saling berbagi ilmu 😊😊 \n\n #it #event #gdgjakarta #gdg #informatics #computer #developer #android #web #frontend #backend #machinelearning #flutter #dart #algorithm #cloudcomputing #technology #style #sty #knowledge #liker #like #love #likes #follow #followme"
    )
]
