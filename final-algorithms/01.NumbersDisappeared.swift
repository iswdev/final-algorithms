//
//  NumbersDisappeared.swift
//  final-algorithms
//
//  Created by Francisco Igor [franciscoigor@gmail.com] on 2018-12-17.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation


func findDisappearedNumbers(_ nums: [Int]) -> [Int]{
    let size = nums.count
    var result = [Int]()
    // check every number in the sequence (1 to length)
    for number in 1...size{
        let pos = nums.index(of : number)
        // number not found
        if pos == nil {
            result.append(number)
        }
    }
    return result
}

