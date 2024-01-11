//
//  MathSerice.swift
//  UnitTesting
//
//  Created by Apple on 11.01.24.
//

import Foundation

enum MathError: Error, Equatable {
    case divisionToZero(String)
}

class MathSerice {

    func summation(number1: Int, number2: Int) -> Int  {
        let result: Int
        result = number1 + number2
        return result
    }
    
    func multiplication(number1: Int, number2: Int) -> Int {
        let result: Int
        result = number1 * number2
        return result
    }
   
    func division(number1: Double, number2: Double) throws -> Double {
        let result: Double
        if number2 == 0 {
            throw MathError.divisionToZero("Деление на 0 невозможно")
        } else {
            result = number1/number2
        }
        return result
    }
    
    
}
