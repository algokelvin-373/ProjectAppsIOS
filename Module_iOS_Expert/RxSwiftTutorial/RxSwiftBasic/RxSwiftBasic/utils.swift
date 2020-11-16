//
//  utils.swift
//  RxSwiftBasic
//
//  Created by Kelvin HT on 11/16/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import RxSwift

func getEmployeeNames() -> Observable<String> {
  let employees = ["Buchori", "Dimas", "Arif", "Gilang", "Widy"]
  return Observable.from(employees)
}
