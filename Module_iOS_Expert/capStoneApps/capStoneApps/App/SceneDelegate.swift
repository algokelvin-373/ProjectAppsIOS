//
//  SceneDelegate.swift
//  capStoneApps
//
//  Created by Kelvin HT on 11/3/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {

        let profileUseCase = Injection.init().provideProfile()
        let gameUseCase = Injection.init().provideGame()
        let movieUsecase = Injection.init().provideMovie()

        let profilePresenter = ProfilePresenter(profileProtocol: profileUseCase)
        let gamePresenter = GamePresenter(gameUseCase: gameUseCase)
        let moviePresenter = MoviePresenter(movieUseCase: movieUsecase)

        let contentView = ContentView()
            .environmentObject(profilePresenter)
            .environmentObject(gamePresenter)
            .environmentObject(moviePresenter)

        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }
}
