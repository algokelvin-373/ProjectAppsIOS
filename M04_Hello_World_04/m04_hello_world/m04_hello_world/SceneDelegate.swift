//
//  SceneDelegate.swift
//  m04_hello_world
//
//  Created by Kelvin HT on 4/14/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        
        /** Indonesian Description
         // Gunakan metode ini untuk mengkonfigurasikan dan melampirkan UIWindow ‘window’ ke UIWindowScene `scene` yang disediakan.
         
         // Jika menggunakan storyboard, properti `window` akan secara otomatis diinisialisasi dan dilampirkan ke scene.
         
         // Delegasi ini tidak mengartikan scene atau sesi penghubung.
         */
        
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
        
        /** Indonesian Description
        // Dipanggil ketika terdapat scene yang akan dirilis oleh system.
         
        // Ini terjadi tak lama setelah scene memasuki background, atau ketika sesinya diakhiri.
         
        // Ia akan melepaskan sumber daya apa pun dari scene yang dapat dibuat kembali saat scene berikutnya terhubung.
         
        // Sebuah scene dapat terhubung kembali nanti, karena sesinya tidak harus diakhiri.
        */
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
        
        /** Indonesian Description
        // Dipanggil ketika scene telah beralih dari keadaan tidak aktif menjadi aktif.
         
        // Gunakan metode ini untuk memulai kembali tugas yang dijeda (atau belum dimulai) saat scene tidak aktif.
        */
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
        
        /** Indonesian Description
        // Dipanggil ketika scene telah beralih dari keadaan aktif menjadi tidak aktif.
         
        // Biasanya terjadi karena ada interupsi sementara (seperti ada panggilan telepon masuk).
        */
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
        
        /** Indonesian Description
        // Dipanggil ketika scene berpindah dari background ke foreground.
         
        // Gunakanlah metode ini untuk membatalkan perubahan yang dilakukan saat memasuki background.
        */
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
        
        /** Indonesian Description
        // Dipanggil ketika scen berpindah dari foreground ke background.
         
        // Gunakanlah metode ini untuk menyimpan data, merilis shared resource dan menyimpan informasi keadaan scene secara spesifik.
        */
    }


}

