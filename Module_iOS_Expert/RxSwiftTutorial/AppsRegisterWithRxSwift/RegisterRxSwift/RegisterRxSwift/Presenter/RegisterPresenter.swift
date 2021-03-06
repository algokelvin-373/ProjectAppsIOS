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
    @Published var nameMessage = ""
    
    func setName(name: String) {
        /**Implement RxSwift**/
        let disposable = Observable.from(optional: name)
            .map{ $0.isEmpty }
            .subscribe(
               onNext: {
                if($0) {
                    self.nameMessage = "Name must not be empty"
                }
                else {
                    self.nameMessage = ""
                }
            })
        disposable.dispose()
    }
}
