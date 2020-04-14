//
//  AppDelegate.swift
//  m04_hello_world
//
//  Created by Kelvin HT on 4/14/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        /** Indonesian Description
        // Override point untuk penyesuaian setelah peluncuran aplikasi.
        */
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        
        /** Indonesian Description
        // Dipanggil ketika ada scene baru yang sedang dibuat
        // Gunakanlah metode ini untuk memilih konfigurasi untuk scen baru
        */
        
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
        
        /** Indonesian Description
        // Dipanggil ketika pengguna mengakhiri sesi dari sebuah scene.
         
        // Jika ada sesi yang diakhir saat aplikasi tidak berjalan, ia akan dipanggil tak lama setelah memanggil application:didFinishLaunchingWithOptions.
         
        // Gunakan metode ini untuk melepaskan sumber daya apapun secara spesifik untuk scene yang diakhiri, karena mereka tidak akan muncul kembali.
        */
    }


}

