//
//  UnitTestingTests.swift
//  UnitTestingTests
//
//  Created by Apple on 11.01.24.
//

import XCTest
@testable import UnitTesting

final class UnitTestingTests: XCTestCase {
    
    var sut: MathSerice!

    override func setUpWithError() throws {
        try  super.setUpWithError()
        sut = MathSerice()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }

    func testSummation() {
        let result = sut.summation(number1: 3, number2: 7)
        XCTAssert(result == 10, "test sucess")
    }
    
    func testMultiplication()  {
        let result = sut.multiplication(number1: 3, number2: 7)
        XCTAssert(result == 21, "test sucess")
    }
   
    func testDivision() throws {
        XCTAssertThrowsError(try sut.division(number1: 40.9, number2: 0.0)) { error in
            print(error)
            XCTAssertEqual(error as? MathError, MathError.divisionToZero("Деление на 0 невозможно"), "test sucess")
        }
    }

    func testPerformanceSummation() {
        self.measure (
            metrics: [XCTClockMetric()]) {
                sut.multiplication(number1: 90, number2: 1000000)
            }
    }

}
