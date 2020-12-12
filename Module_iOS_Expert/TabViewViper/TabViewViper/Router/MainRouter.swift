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
        let presenterOnePage = PageOnePresenter()
        return PageOneView(presenterPageOne: presenterOnePage)
    }
    
    func goToTabTwoPage() -> some View {
        let presenterTwoPage = PageTwoPresenter()
        return PageTwoView(presenterPageTwo: presenterTwoPage)
    }
}
