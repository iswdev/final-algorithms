//
//  03.SelfDividingNumber.swift
//  final-algorithms
//
//  Created by Francisco Igor [franciscoigor@gmail.com] on 2018-12-18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

/**
 * Check if a number is self-dividing
 */
func selfDividingNumber(_ number: Int) -> Bool {
    let digits = String(number)
    // loop over digits
    for digit in digits{
        let digitNumber = Int(String(digit))
        // with digit 0, not self-dividing
        if digitNumber == 0 {
            return false
        }
        // modulus != 0, not self-dividing
        if number % digitNumber! != 0 {
            return false
        }
    }
    return true
}

/*
 * Check a range of numbers for self-dividing numbers
 */
func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
    var result = [Int]()
    for number in left...right {
        if selfDividingNumber(number){
            result.append(number)
        }
    }
    return result
}

