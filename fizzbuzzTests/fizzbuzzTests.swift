//
//  fizzbuzzTests.swift
//  fizzbuzzTests
//
//  Created by Cem Ergin on 23/09/2022.
//


//Instead of numbers divisible by 3, the method should output "Fizz".
//Instead of numbers divisible by 5, the method should output "Buzz".
//Instead of numbers divisible by 3 and 5, the method should output "FizzBuzz".

import XCTest
@testable import fizzbuzz

class fizzbuzzTests: XCTestCase {
    func test_returns_Fizz_if_input_is_3() throws {
        let result = fizzBuzz(3)
        XCTAssertEqual(result, "Fizz")
    }
    
    func test_returns_Fizz_if_input_is_6() throws {
        let result = fizzBuzz(6)
        XCTAssertEqual(result, "Fizz")
    }
    
    func test_returns_Buzz_if_input_is_5() throws {
        let result = fizzBuzz(5)
        XCTAssertEqual(result, "Buzz")
    }
    
    func test_returns_Buzz_if_input_is_10() throws {
        let result = fizzBuzz(10)
        XCTAssertEqual(result, "Buzz")
    }

    func test_returns_FizzBuzz_if_input_is_15() throws {
        let result = fizzBuzz(15)
        XCTAssertEqual(result, "FizzBuzz")
    }
    
    func test_returns_given_number_if_input_is_1() throws {
        let result = fizzBuzz(1)
        XCTAssertEqual(result, "1")
    }
    
    func test_returns_given_number_if_input_is_2() throws {
        let result = fizzBuzz(2)
        XCTAssertEqual(result, "2")
    }
}


func fizzBuzz(_ input:Int) -> String {
    if input % 15 == 0 {
        return "FizzBuzz"
    } else if input % 5 == 0 {
        return "Buzz"
    } else if input % 3 == 0 {
        return "Fizz"
    }
    return "\(input)"
}
