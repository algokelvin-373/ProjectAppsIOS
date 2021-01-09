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

/**Combine Tutorial - Operator**/
print("--Operator--")

Publishers.Sequence(sequence: ["1", "2", "3", "4", "5", "6", "7", "8", "9"] )
    .map { Int($0) ?? 0 }
    .filter { $0%2 == 1 }
    .print()
    .count()
    .sink(receiveValue: { print("Total bilangan ganjil adalah \($0)") })

print("\n--END of Operator--\n")

/**Combine Tutorial - Subsribes and Receive**/
print("--Subsribes and Receive--")

private func getEmployeeNames() -> Publishers.Sequence<[String], Never> {
  let employees = ["Buchori", "Dimas", "Arif", "Gilang", "Widy"]
  return Publishers.Sequence(sequence: employees)
}

getEmployeeNames()
  .subscribe(on: DispatchQueue.global(qos: .background))
  .receive(on: RunLoop.main)
  .sink(receiveValue: { print($0) } )

print("\n--END of Subsribes and Receive--\n")
