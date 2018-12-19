//
//  06.ReverseNumber.swift
//  final-algorithms
//
//  Created by User on 2018-12-18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation


func reverseNumber(_ number: inout Int) -> Int {
    var result : Int = 0
    var digit : Int = 0
    var factor : Int = 1000000000
    var digitFactor : Int = 1
    while factor >= 1 {
        digit = number % (factor * 10) - number % (factor)
        result += digit / factor * digitFactor
        if (factor<number){
            digitFactor *= 10
        }
        factor /= 10
        
    }
    
    return result
}

