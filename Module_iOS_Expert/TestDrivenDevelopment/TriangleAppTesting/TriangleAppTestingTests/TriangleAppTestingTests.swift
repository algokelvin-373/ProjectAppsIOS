//
//  TriangleAppTestingTests.swift
//  TriangleAppTestingTests
//
//  Created by Kelvin HT on 1/22/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import XCTest
@testable import TriangleAppTesting

class TriangleAppTestingTests: XCTestCase {

    func testInvalidInputSides() {
        XCTAssertThrowsError(try detectTriangle(-1, 2, 3)) { error in
            XCTAssertEqual(error as? TriangleError, TriangleError.invalidInput)
        }
    }
    
    func detectTriangle(_ A: Int,_ B: Int,_ C: Int) throws {
        if A < 1 {
            throw TriangleError.invalidInput
        }
    }
}

enum TriangleError: Error {
    case invalidInput
}
