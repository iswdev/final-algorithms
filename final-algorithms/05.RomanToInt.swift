//
//  05.RomanToInt.swift
//  final-algorithms
//
//  Created by User on 2018-12-18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation


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
    for digit in romanNumeral.reversed(){
        let lastVal = numbers[last]!
        last = String(digit)
        if (lastVal > numbers[last]!){
            sum -= numbers[last]!
        }else{
            sum += numbers[last]!
        }
    }
    return sum
}

