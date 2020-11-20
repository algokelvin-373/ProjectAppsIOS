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

print("\nBehaviour - Behaviour Subject v01")
let sourceBehaviour01 = BehaviorSubject<Int>(value: 0) // Value start is 0
sourceBehaviour01.subscribe(onNext: { print("Subscription value is \($0)") })
sourceBehaviour01.onNext(1)
sourceBehaviour01.onNext(2)
sourceBehaviour01.subscribe(onNext: { print("Another subscription value is \($0)") })
sourceBehaviour01.onNext(3)
sourceBehaviour01.onCompleted()

print("\nBehaviour - Behaviour Subject v02")
let sourceBehaviour02 = BehaviorSubject<Int>(value: 0)
sourceBehaviour02.subscribe(onNext: { print("Subscription value is \($0)") })
sourceBehaviour02.onNext(1)
sourceBehaviour02.onNext(2)
sourceBehaviour02.subscribe(onNext: { print("Another subscription value is \($0)") })
sourceBehaviour02.onNext(3)
sourceBehaviour02.onNext(4)
sourceBehaviour02.subscribe(onNext: { print("Another again subscription value is \($0)") })
sourceBehaviour02.onNext(5)
sourceBehaviour02.onCompleted()

print("\nReplay - Replay Subject v01")
let sourceReplay01 = ReplaySubject<Int>.create(bufferSize: 1) // Determine replay before n = 1
sourceReplay01.subscribe(onNext: { print("Subscription value is \($0)") })
sourceReplay01.onNext(1)
sourceReplay01.onNext(2)
sourceReplay01.subscribe(onNext: { print("Another subscription value is \($0)") })
sourceReplay01.onNext(3)
sourceReplay01.onCompleted()

print("\nReplay - Replay Subject v02")
let sourceReplay02 = ReplaySubject<Int>.create(bufferSize: 2) // Determine replay before n = 2
sourceReplay02.subscribe(onNext: { print("Subscription value is \($0)") })
sourceReplay02.onNext(1)
sourceReplay02.onNext(2)
sourceReplay02.onNext(3)
sourceReplay02.onNext(4)
sourceReplay02.onNext(5)
sourceReplay02.onNext(6)
sourceReplay02.subscribe(onNext: { print("Another subscription value is \($0)") })
sourceReplay02.onNext(7)
sourceReplay02.onNext(8)
sourceReplay02.onNext(9)
sourceReplay02.onNext(10)
sourceReplay02.subscribe(onNext: { print("Another again subscription value is \($0)") })
sourceReplay02.onNext(11)
sourceReplay02.onNext(12)
sourceReplay02.onNext(13)
sourceReplay02.onNext(14)
sourceReplay02.onNext(15)
sourceReplay02.onCompleted()

print("\nAsync - Async Subject")
let source = AsyncSubject<Int>()
source.subscribe(onNext: { print("Subscription value is \($0)") })
source.onNext(1)
source.onNext(2)
source.subscribe(onNext: { print("Another subscription value is \($0)") })
source.onNext(3)
source.onCompleted()

print("")
