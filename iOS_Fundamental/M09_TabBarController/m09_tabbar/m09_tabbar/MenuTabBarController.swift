//
//  MenuTabBarController.swift
//  m09_tabbar
//
//  Created by Kelvin HT on 4/27/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import UIKit

class MenuTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // konstruktor untuk kelas view controller
        let homeViewController = ViewController()
        let photosViewController = PhotosViewController()
               
        // menambahkan tabBarItem ke dalam
        homeViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
        
        // menambahkan tabBarItem dengan gambar lain
        photosViewController.tabBarItem = UITabBarItem(title: "Photos", image: .actions, tag: 1)
        
        // menambahkan view controller ke dalam class tab bar controller
        viewControllers =  [homeViewController, photosViewController]
    }
}
