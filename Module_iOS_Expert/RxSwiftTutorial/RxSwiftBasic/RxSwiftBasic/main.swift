//
//  main.swift
//  RxSwiftBasic
//
//  Created by Kelvin HT on 11/16/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import RxSwift

print("Hello, This is Practice RxSwift Tutorial\n")

print("\n01. Basic Observable - Bilangan Ganjil")
Observable.of("1", "2", "3", "4", "5")
    .map { Int($0) ?? 0 }
    .filter { $0%2 == 1 }
    .do(onNext: { print("\($0) adalah bilangan ganjil")})
    .toArray()
    .map { $0.count }
    .subscribe(onSuccess: { print("Total bilangan ganjil adalah \($0)") })
