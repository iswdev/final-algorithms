//
//  09.SingleNumber.swift
//  final-algorithms
//
//  Created by Francisco Igor [franciscoigor@gmail.com] on 2018-12-18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

/*
 * Find a single number in an array that don't appear twice
 */
func singleNumber(_ nums: [Int]) -> Int {
    var result = 0;
    for num in nums {
        // using XOR with all numbers will reveal the single one
        // all pairs are canceled A xor A = 0
        result = result ^ num;
    }
    return result;
}

