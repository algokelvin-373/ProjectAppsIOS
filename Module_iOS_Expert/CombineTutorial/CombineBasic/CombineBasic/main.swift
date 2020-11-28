//
//  main.swift
//  CombineBasic
//
//  Created by Kelvin HT on 11/28/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import Combine

/**Combine Tutorial - Subscriber**/
print("--Subscriber--")

print("1. Assign")
//var myLabel = ""
//let examplePulisher = Just("Dicoding")
//examplePulisher
//  .assign(to: \.text, on: self.myLabel)

print("\n2. Sink")
let examplePublisher = Just(5)
examplePublisher.sink(receiveCompletion: { err in
  print(".sink() received the completion", String(describing: err))
}, receiveValue: { value in
  print(".sink() received \(String(describing: value))")
})

print("\n--END of Subscriber--\n")

print("--Operator--")

Publishers.Sequence(sequence: ["1", "2", "3", "4", "5", "6", "7", "8", "9"] )
    .map { Int($0) ?? 0 }
    .filter { $0%2 == 1 }
    .print()
    .count()
    .sink(receiveValue: { print("Total bilangan ganjil adalah \($0)") })

print("\n--END of Operator--\n")
