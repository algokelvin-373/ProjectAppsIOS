//
//  main.swift
//  CombineSubject
//
//  Created by Kelvin HT on 11/28/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import Combine

print("--PassthroughSubject--")

let passthroughSubject = PassthroughSubject<Int, Never>()
passthroughSubject.send(1)
passthroughSubject.send(2)
let cancellable = passthroughSubject.sink(receiveValue: { value in print(value) })
passthroughSubject.send(3)
passthroughSubject.send(4)
passthroughSubject.send(completion: .finished)
passthroughSubject.send(5)

print("--END of PassthroughSubject--\n")

print("--CurrentValueSubject--")

let currentValueSubject = CurrentValueSubject<Int, Never>(0)
currentValueSubject.send(1)
currentValueSubject.send(2)
let cancellable2 = currentValueSubject.sink(receiveValue: { value in print(value) })
currentValueSubject.send(3)
currentValueSubject.send(4)
currentValueSubject.send(completion: .finished)
currentValueSubject.send(5)

print("--END of CurrentValueSubject--\n")

