//
//  AppDelegate.swift
//  m002_hello_world_2
//
//  Created by Kelvin HT on 6/5/22.
//  Copyright © 2022 Kelvin HT. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        // Override point untuk penyesuaian setelah peluncuran aplikasi.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(
        _ application: UIApplication,
        configurationForConnecting connectingSceneSession: UISceneSession,
        options: UIScene.ConnectionOptions
    ) -> UISceneConfiguration {
        // Dipanggil ketika ada scene baru yang sedang dibuat
        // Gunakanlah metode ini untuk memilih konfigurasi untuk scen baru
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(
        _ application: UIApplication,
        didDiscardSceneSessions sceneSessions: Set<UISceneSession>
    ) {
        // Dipanggil ketika pengguna mengakhiri sesi dari sebuah scene.
        // Jika ada sesi yang diakhir saat aplikasi tidak berjalan, ia akan dipanggil tak lama setelah memanggil application:didFinishLaunchingWithOptions.
        // Gunakan metode ini untuk melepaskan sumber daya apapun secara spesifik untuk scene yang diakhiri, karena mereka tidak akan muncul kembali.
    }


}

