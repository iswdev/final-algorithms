//
//  08.MoveZeroes.swift
//  final-algorithms
//
//  Created by Francisco Igor [franciscoigor@gmail.com] on 2018-12-18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

/*
 * Move all zeroes in the array to the end of the array
 */
func moveZeroes(_ nums: inout [Int]) {
    var pos = 0
    for _ in 0..<nums.count {
        if nums[pos] == 0 {
            // remove 0 from current position and append to the end
            nums.remove(at: pos)
            nums.append(0)
        }else{
            pos += 1
        }
    }
}


