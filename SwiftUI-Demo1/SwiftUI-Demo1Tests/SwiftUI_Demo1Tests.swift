//
//  SwiftUI_Demo1Tests.swift
//  SwiftUI-Demo1Tests
//
//  Created by Tony Lee on 2021/6/22.
//

import XCTest
@testable import SwiftUI_Demo1

class SwiftUI_Demo1Tests: XCTestCase {

  /*
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
      continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
   */
  
  func test_myReverseString() {
    let name = "Tony Lee"
    let reversedString = name.reversedString()
    XCTAssertEqual(reversedString, "eeL ynoT")
  }
  
}
