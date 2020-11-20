//
//  main.swift
//  RxSwiftSubject
//
//  Created by Kelvin HT on 11/16/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import RxSwift

print("Subject - Publish Subject v01")
let sourcePublish = PublishSubject<Int>()
sourcePublish.subscribe(onNext: { print("Subscription value is \($0)") })
sourcePublish.onNext(1)
sourcePublish.onNext(2)
sourcePublish.subscribe(onNext: { print("Another subscription value is \($0)") })
sourcePublish.onNext(3)
sourcePublish.onCompleted()

print("\nSubject - Publish Subject v02")
let sourcePublish02 = PublishSubject<Int>()
sourcePublish02.subscribe(onNext: { print("Subscription value is \($0)") })
sourcePublish02.onNext(1)
sourcePublish02.onNext(2)
sourcePublish02.subscribe(onNext: { print("Another subscription value is \($0)") })
sourcePublish02.onNext(3)
sourcePublish02.onNext(4)
sourcePublish02.subscribe(onNext: { print("Another again subscription value is \($0)") })
sourcePublish02.onNext(5)
sourcePublish02.onCompleted()

print("")
