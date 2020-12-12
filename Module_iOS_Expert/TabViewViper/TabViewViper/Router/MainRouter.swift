//
//  MainRouter.swift
//  TabViewViper
//
//  Created by Kelvin HT on 12/12/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

class MainRouter {
    func goToTabOnePage() -> some View {
        return PageOneView()
    }
    
    func goToTabTwoPage() -> some View {
        return PageTwoView()
    }
}
