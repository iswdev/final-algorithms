//
//  05.RomanToInt.swift
//  final-algorithms
//
//  Created by Francisco Igor [franciscoigor@gmail.com] on 2018-12-18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

/*
 * To convert from roman numbers to Integer numbers
 */
func romanToInt(_ romanNumeral: String) -> Int {
    let numbers = [
        "" : 0,
        "I" : 1,
        "V" : 5,
        "X" : 10,
        "L" : 50,
        "C" : 100,
        "D" : 500,
        "M" : 1000
     ]
    var sum = 0
    var last : String = ""
    // loop in reverse (from low to high values)
    for digit in romanNumeral.reversed(){
        let lastVal = numbers[last]!
        last = String(digit)
        if (numbers[last]! < lastVal){
            // subtract if current digit is lower than last digit
            sum -= numbers[last]!
        }else{
            sum += numbers[last]!
        }
    }
    return sum
}

