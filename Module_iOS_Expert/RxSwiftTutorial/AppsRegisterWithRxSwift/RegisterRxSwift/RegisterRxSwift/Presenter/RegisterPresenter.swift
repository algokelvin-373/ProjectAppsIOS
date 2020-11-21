//
//  RegisterPresenter.swift
//  RegisterRxSwift
//
//  Created by Kelvin HT on 11/21/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class PresenterRegister: ObservableObject {
    @Published var namePresenter = ""
    
    func setName(name: String) {
        print("Input: \(name)")
    }
}
