//
//  08.MoveZeroes.swift
//  final-algorithms
//
//  Created by User on 2018-12-18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

func moveZeroes(_ nums: inout [Int]) {
    var pos = 0
    for _ in 0..<nums.count {
        if nums[pos] == 0 {
            nums.remove(at: pos)
            nums.append(0)
        }else{
            pos += 1
        }
    }
}


