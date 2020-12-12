//
//  MainPresenter.swift
//  TabViewViper
//
//  Created by Kelvin HT on 12/11/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

class MainPresenter: ObservableObject {
    private var mainUseCase: MainProtocol
    
    init(mainUseCase: MainProtocol) {
      self.mainUseCase = mainUseCase
    }
}
