//
//  09.SingleNumber.swift
//  final-algorithms
//
//  Created by User on 2018-12-18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation


func singleNumber(_ nums: [Int]) -> Int {
    var result = 0;
    for num in nums {
        result = result ^ num;
    }
    return result;
}
