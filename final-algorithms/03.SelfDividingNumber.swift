//
//  03.SelfDividingNumber.swift
//  final-algorithms
//
//  Created by User on 2018-12-18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

func selfDividingNumber(_ number: Int) -> Bool {
    let digits = String(number)
    for digit in digits{
        let digitNumber = Int(String(digit))
        if digitNumber == 0 {
            return false
        }
        if number % digitNumber! != 0 {
            return false
        }
    }
    return true
}


func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
    var result = [Int]()
    for number in left...right {
        if selfDividingNumber(number){
            result.append(number)
        }
    }
    return result
}

