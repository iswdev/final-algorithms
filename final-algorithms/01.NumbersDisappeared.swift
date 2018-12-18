//
//  NumbersDisappeared.swift
//  final-algorithms
//
//  Created by User on 2018-12-17.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation


func findNumbersDisappeared(in numbers: [Int]) -> [Int]{
    let size = numbers.count
    var result = [Int]()
    for number in 1...size{
        let pos = numbers.index(of : number)
        if pos == nil {
            result.append(number)
        }
    }
    return result
}

