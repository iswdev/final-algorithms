//
//  06.ReverseNumber.swift
//  final-algorithms
//
//  Created by Francisco Igor [franciscoigor@gmail.com] on 2018-12-18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

/*
 * Reverse a number using only integer operations
 */
func reverseNumber(_ number: inout Int) -> Int {
    var result : Int = 0
    var digit : Int = 0
    var factor : Int = 1000000000
    var digitFactor : Int = 1
    while factor >= 1 {
        // extract the next digit
        digit = ( number % (factor * 10) - number % (factor) ) / factor
        // put the digit at the left of current value
        result += digit * digitFactor
        if (factor<number){
            // change next digit position
            digitFactor *= 10
        }
        factor /= 10
    }
    return result
}

